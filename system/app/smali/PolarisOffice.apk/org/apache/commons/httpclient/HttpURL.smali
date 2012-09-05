.class public Lorg/apache/commons/httpclient/HttpURL;
.super Lorg/apache/commons/httpclient/URI;
.source "HttpURL.java"


# static fields
.field public static final DEFAULT_PORT:I = 0x50

.field public static final DEFAULT_SCHEME:[C = null

.field public static final _default_port:I = 0x50

.field public static final _default_scheme:[C = null

.field static final serialVersionUID:J = -0x63566f5bfaf4d8e3L


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 409
    const/4 v0, 0x4

    new-array v0, v0, [C

    fill-array-data v0, :array_e

    sput-object v0, Lorg/apache/commons/httpclient/HttpURL;->DEFAULT_SCHEME:[C

    .line 416
    sget-object v0, Lorg/apache/commons/httpclient/HttpURL;->DEFAULT_SCHEME:[C

    sput-object v0, Lorg/apache/commons/httpclient/HttpURL;->_default_scheme:[C

    return-void

    .line 409
    nop

    :array_e
    .array-data 0x2
        0x68t 0x0t
        0x74t 0x0t
        0x74t 0x0t
        0x70t 0x0t
    .end array-data
.end method

.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 46
    invoke-direct {p0}, Lorg/apache/commons/httpclient/URI;-><init>()V

    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "original"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/URIException;
        }
    .end annotation

    .prologue
    .line 105
    invoke-direct {p0}, Lorg/apache/commons/httpclient/URI;-><init>()V

    .line 106
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/httpclient/HttpURL;->parseUriReference(Ljava/lang/String;Z)V

    .line 107
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpURL;->checkValid()V

    .line 108
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 12
    .parameter "host"
    .parameter "port"
    .parameter "path"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/URIException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 121
    move-object v0, p0

    move-object v2, v1

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, v1

    move-object v7, v1

    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/httpclient/HttpURL;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 13
    .parameter "host"
    .parameter "port"
    .parameter "path"
    .parameter "query"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/URIException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 138
    move-object v0, p0

    move-object v2, v1

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, v1

    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/httpclient/HttpURL;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "original"
    .parameter "charset"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/URIException;
        }
    .end annotation

    .prologue
    .line 91
    invoke-direct {p0}, Lorg/apache/commons/httpclient/URI;-><init>()V

    .line 92
    iput-object p2, p0, Lorg/apache/commons/httpclient/HttpURL;->protocolCharset:Ljava/lang/String;

    .line 93
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/httpclient/HttpURL;->parseUriReference(Ljava/lang/String;Z)V

    .line 94
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpURL;->checkValid()V

    .line 95
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .registers 12
    .parameter "userinfo"
    .parameter "host"
    .parameter "port"
    .parameter "path"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/URIException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 268
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v6, v5

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/httpclient/HttpURL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 13
    .parameter "userinfo"
    .parameter "host"
    .parameter "port"
    .parameter "path"
    .parameter "query"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/URIException;
        }
    .end annotation

    .prologue
    .line 290
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/httpclient/HttpURL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .parameter "userinfo"
    .parameter "host"
    .parameter "port"
    .parameter "path"
    .parameter "query"
    .parameter "fragment"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/URIException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 311
    invoke-direct {p0}, Lorg/apache/commons/httpclient/URI;-><init>()V

    .line 314
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 315
    .local v0, buff:Ljava/lang/StringBuffer;
    if-nez p1, :cond_10

    if-nez p2, :cond_10

    if-eq p3, v2, :cond_41

    .line 316
    :cond_10
    sget-object v1, Lorg/apache/commons/httpclient/HttpURL;->DEFAULT_SCHEME:[C

    iput-object v1, p0, Lorg/apache/commons/httpclient/HttpURL;->_scheme:[C

    .line 317
    sget-object v1, Lorg/apache/commons/httpclient/HttpURL;->_default_scheme:[C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 318
    const-string v1, "://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 319
    if-eqz p1, :cond_28

    .line 320
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 321
    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 323
    :cond_28
    if-eqz p2, :cond_41

    .line 324
    sget-object v1, Lorg/apache/commons/httpclient/URI;->allowed_host:Ljava/util/BitSet;

    invoke-static {p2, v1}, Lorg/apache/commons/httpclient/util/URIUtil;->encode(Ljava/lang/String;Ljava/util/BitSet;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 325
    if-ne p3, v2, :cond_39

    const/16 v1, 0x50

    if-eq p3, v1, :cond_41

    .line 326
    :cond_39
    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 327
    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 331
    :cond_41
    if-eqz p4, :cond_60

    .line 332
    sget-object v1, Lorg/apache/commons/httpclient/HttpURL;->scheme:Ljava/util/BitSet;

    if-eqz v1, :cond_57

    const-string v1, "/"

    invoke-virtual {p4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_57

    .line 333
    new-instance v1, Lorg/apache/commons/httpclient/URIException;

    const-string v2, "abs_path requested"

    invoke-direct {v1, v3, v2}, Lorg/apache/commons/httpclient/URIException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 336
    :cond_57
    sget-object v1, Lorg/apache/commons/httpclient/URI;->allowed_abs_path:Ljava/util/BitSet;

    invoke-static {p4, v1}, Lorg/apache/commons/httpclient/util/URIUtil;->encode(Ljava/lang/String;Ljava/util/BitSet;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 338
    :cond_60
    if-eqz p5, :cond_70

    .line 339
    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 340
    sget-object v1, Lorg/apache/commons/httpclient/URI;->allowed_query:Ljava/util/BitSet;

    invoke-static {p5, v1}, Lorg/apache/commons/httpclient/util/URIUtil;->encode(Ljava/lang/String;Ljava/util/BitSet;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 342
    :cond_70
    if-eqz p6, :cond_80

    .line 343
    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 344
    sget-object v1, Lorg/apache/commons/httpclient/URI;->allowed_fragment:Ljava/util/BitSet;

    invoke-static {p6, v1}, Lorg/apache/commons/httpclient/util/URIUtil;->encode(Ljava/lang/String;Ljava/util/BitSet;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 346
    :cond_80
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v3}, Lorg/apache/commons/httpclient/HttpURL;->parseUriReference(Ljava/lang/String;Z)V

    .line 347
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpURL;->checkValid()V

    .line 348
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12
    .parameter "user"
    .parameter "password"
    .parameter "host"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/URIException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 154
    const/4 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, v5

    move-object v7, v5

    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/httpclient/HttpURL;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 13
    .parameter "user"
    .parameter "password"
    .parameter "host"
    .parameter "port"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/URIException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 171
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v6, v5

    move-object v7, v5

    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/httpclient/HttpURL;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .registers 14
    .parameter "user"
    .parameter "password"
    .parameter "host"
    .parameter "port"
    .parameter "path"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/URIException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 189
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object v7, v6

    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/httpclient/HttpURL;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 15
    .parameter "user"
    .parameter "password"
    .parameter "host"
    .parameter "port"
    .parameter "path"
    .parameter "query"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/URIException;
        }
    .end annotation

    .prologue
    .line 208
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/httpclient/HttpURL;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 15
    .parameter "user"
    .parameter "password"
    .parameter "host"
    .parameter "port"
    .parameter "path"
    .parameter "query"
    .parameter "fragment"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/URIException;
        }
    .end annotation

    .prologue
    .line 366
    invoke-static {p1, p2}, Lorg/apache/commons/httpclient/HttpURL;->toUserinfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, p0

    move-object v2, p3

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/httpclient/HttpURL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 13
    .parameter "host"
    .parameter "path"
    .parameter "query"
    .parameter "fragment"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/URIException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 225
    const/4 v4, -0x1

    move-object v0, p0

    move-object v2, v1

    move-object v3, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/httpclient/HttpURL;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 13
    .parameter "userinfo"
    .parameter "host"
    .parameter "path"
    .parameter "query"
    .parameter "fragment"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/URIException;
        }
    .end annotation

    .prologue
    .line 247
    const/4 v3, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/httpclient/HttpURL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/httpclient/HttpURL;Ljava/lang/String;)V
    .registers 4
    .parameter "base"
    .parameter "relative"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/URIException;
        }
    .end annotation

    .prologue
    .line 388
    new-instance v0, Lorg/apache/commons/httpclient/HttpURL;

    invoke-direct {v0, p2}, Lorg/apache/commons/httpclient/HttpURL;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/httpclient/HttpURL;-><init>(Lorg/apache/commons/httpclient/HttpURL;Lorg/apache/commons/httpclient/HttpURL;)V

    .line 389
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/httpclient/HttpURL;Lorg/apache/commons/httpclient/HttpURL;)V
    .registers 3
    .parameter "base"
    .parameter "relative"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/URIException;
        }
    .end annotation

    .prologue
    .line 400
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/httpclient/URI;-><init>(Lorg/apache/commons/httpclient/URI;Lorg/apache/commons/httpclient/URI;)V

    .line 401
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpURL;->checkValid()V

    .line 402
    return-void
.end method

.method public constructor <init>([C)V
    .registers 4
    .parameter "escaped"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/URIException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 76
    invoke-direct {p0}, Lorg/apache/commons/httpclient/URI;-><init>()V

    .line 77
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([C)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/httpclient/HttpURL;->parseUriReference(Ljava/lang/String;Z)V

    .line 78
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpURL;->checkValid()V

    .line 79
    return-void
.end method

.method public constructor <init>([CLjava/lang/String;)V
    .registers 5
    .parameter "escaped"
    .parameter "charset"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/URIException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 61
    invoke-direct {p0}, Lorg/apache/commons/httpclient/URI;-><init>()V

    .line 62
    iput-object p2, p0, Lorg/apache/commons/httpclient/HttpURL;->protocolCharset:Ljava/lang/String;

    .line 63
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([C)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/httpclient/HttpURL;->parseUriReference(Ljava/lang/String;Z)V

    .line 64
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpURL;->checkValid()V

    .line 65
    return-void
.end method

.method protected static toUserinfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "user"
    .parameter "password"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/URIException;
        }
    .end annotation

    .prologue
    .line 370
    if-nez p0, :cond_4

    const/4 v1, 0x0

    .line 376
    :goto_3
    return-object v1

    .line 371
    :cond_4
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 372
    .local v0, usrinfo:Ljava/lang/StringBuffer;
    sget-object v1, Lorg/apache/commons/httpclient/URI;->allowed_within_userinfo:Ljava/util/BitSet;

    invoke-static {p0, v1}, Lorg/apache/commons/httpclient/util/URIUtil;->encode(Ljava/lang/String;Ljava/util/BitSet;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 373
    if-nez p1, :cond_1b

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 374
    :cond_1b
    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 375
    sget-object v1, Lorg/apache/commons/httpclient/URI;->allowed_within_userinfo:Ljava/util/BitSet;

    invoke-static {p1, v1}, Lorg/apache/commons/httpclient/util/URIUtil;->encode(Ljava/lang/String;Ljava/util/BitSet;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 376
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3
.end method


# virtual methods
.method protected checkValid()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/URIException;
        }
    .end annotation

    .prologue
    .line 828
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpURL;->_scheme:[C

    sget-object v1, Lorg/apache/commons/httpclient/HttpURL;->DEFAULT_SCHEME:[C

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/httpclient/HttpURL;->equals([C[C)Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpURL;->_scheme:[C

    if-eqz v0, :cond_17

    .line 829
    new-instance v0, Lorg/apache/commons/httpclient/URIException;

    const/4 v1, 0x1

    const-string v2, "wrong class use"

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/httpclient/URIException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 831
    :cond_17
    return-void
.end method

.method public getEscapedPassword()Ljava/lang/String;
    .registers 3

    .prologue
    .line 707
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpURL;->getRawPassword()[C

    move-result-object v0

    .line 708
    .local v0, password:[C
    if-nez v0, :cond_8

    const/4 v1, 0x0

    :goto_7
    return-object v1

    :cond_8
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    goto :goto_7
.end method

.method public getEscapedUser()Ljava/lang/String;
    .registers 3

    .prologue
    .line 615
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpURL;->getRawUser()[C

    move-result-object v0

    .line 616
    .local v0, user:[C
    if-nez v0, :cond_8

    const/4 v1, 0x0

    :goto_7
    return-object v1

    :cond_8
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    goto :goto_7
.end method

.method public getPassword()Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/URIException;
        }
    .end annotation

    .prologue
    .line 719
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpURL;->getRawPassword()[C

    move-result-object v0

    .line 720
    .local v0, password:[C
    if-nez v0, :cond_8

    const/4 v1, 0x0

    :goto_7
    return-object v1

    :cond_8
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpURL;->getProtocolCharset()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/commons/httpclient/HttpURL;->decode([CLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_7
.end method

.method public getPort()I
    .registers 3

    .prologue
    .line 463
    iget v0, p0, Lorg/apache/commons/httpclient/HttpURL;->_port:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    const/16 v0, 0x50

    :goto_7
    return v0

    :cond_8
    iget v0, p0, Lorg/apache/commons/httpclient/HttpURL;->_port:I

    goto :goto_7
.end method

.method public getRawAboveHierPath()[C
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/URIException;
        }
    .end annotation

    .prologue
    .line 745
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpURL;->getRawCurrentHierPath()[C

    move-result-object v0

    .line 746
    .local v0, path:[C
    if-eqz v0, :cond_9

    array-length v1, v0

    if-nez v1, :cond_c

    :cond_9
    sget-object v1, Lorg/apache/commons/httpclient/HttpURL;->rootPath:[C

    :goto_b
    return-object v1

    :cond_c
    invoke-virtual {p0, v0}, Lorg/apache/commons/httpclient/HttpURL;->getRawCurrentHierPath([C)[C

    move-result-object v1

    goto :goto_b
.end method

.method public getRawCurrentHierPath()[C
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/URIException;
        }
    .end annotation

    .prologue
    .line 733
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpURL;->_path:[C

    if-eqz v0, :cond_9

    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpURL;->_path:[C

    array-length v0, v0

    if-nez v0, :cond_c

    :cond_9
    sget-object v0, Lorg/apache/commons/httpclient/HttpURL;->rootPath:[C

    :goto_b
    return-object v0

    :cond_c
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpURL;->_path:[C

    invoke-super {p0, v0}, Lorg/apache/commons/httpclient/URI;->getRawCurrentHierPath([C)[C

    move-result-object v0

    goto :goto_b
.end method

.method public getRawPassword()[C
    .registers 7

    .prologue
    .line 690
    iget-object v3, p0, Lorg/apache/commons/httpclient/HttpURL;->_userinfo:[C

    const/16 v4, 0x3a

    invoke-virtual {p0, v3, v4}, Lorg/apache/commons/httpclient/HttpURL;->indexFirstOf([CC)I

    move-result v0

    .line 691
    .local v0, from:I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_d

    .line 692
    const/4 v2, 0x0

    .line 697
    :goto_c
    return-object v2

    .line 694
    :cond_d
    iget-object v3, p0, Lorg/apache/commons/httpclient/HttpURL;->_userinfo:[C

    array-length v3, v3

    sub-int/2addr v3, v0

    add-int/lit8 v1, v3, -0x1

    .line 695
    .local v1, len:I
    new-array v2, v1, [C

    .line 696
    .local v2, result:[C
    iget-object v3, p0, Lorg/apache/commons/httpclient/HttpURL;->_userinfo:[C

    add-int/lit8 v4, v0, 0x1

    const/4 v5, 0x0

    invoke-static {v3, v4, v2, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_c
.end method

.method public getRawPath()[C
    .registers 3

    .prologue
    .line 756
    invoke-super {p0}, Lorg/apache/commons/httpclient/URI;->getRawPath()[C

    move-result-object v0

    .line 757
    .local v0, path:[C
    if-eqz v0, :cond_9

    array-length v1, v0

    if-nez v1, :cond_b

    :cond_9
    sget-object v0, Lorg/apache/commons/httpclient/HttpURL;->rootPath:[C

    .end local v0           #path:[C
    :cond_b
    return-object v0
.end method

.method public getRawScheme()[C
    .registers 2

    .prologue
    .line 443
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpURL;->_scheme:[C

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    sget-object v0, Lorg/apache/commons/httpclient/HttpURL;->DEFAULT_SCHEME:[C

    goto :goto_5
.end method

.method public getRawUser()[C
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 595
    iget-object v2, p0, Lorg/apache/commons/httpclient/HttpURL;->_userinfo:[C

    if-eqz v2, :cond_a

    iget-object v2, p0, Lorg/apache/commons/httpclient/HttpURL;->_userinfo:[C

    array-length v2, v2

    if-nez v2, :cond_c

    .line 596
    :cond_a
    const/4 v0, 0x0

    .line 605
    :goto_b
    return-object v0

    .line 598
    :cond_c
    iget-object v2, p0, Lorg/apache/commons/httpclient/HttpURL;->_userinfo:[C

    const/16 v3, 0x3a

    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/httpclient/HttpURL;->indexFirstOf([CC)I

    move-result v1

    .line 600
    .local v1, to:I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1a

    .line 601
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpURL;->_userinfo:[C

    goto :goto_b

    .line 603
    :cond_1a
    new-array v0, v1, [C

    .line 604
    .local v0, result:[C
    iget-object v2, p0, Lorg/apache/commons/httpclient/HttpURL;->_userinfo:[C

    invoke-static {v2, v4, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_b
.end method

.method public getScheme()Ljava/lang/String;
    .registers 3

    .prologue
    .line 453
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpURL;->_scheme:[C

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lorg/apache/commons/httpclient/HttpURL;->DEFAULT_SCHEME:[C

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    goto :goto_5
.end method

.method public getUser()Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/URIException;
        }
    .end annotation

    .prologue
    .line 627
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpURL;->getRawUser()[C

    move-result-object v0

    .line 628
    .local v0, user:[C
    if-nez v0, :cond_8

    const/4 v1, 0x0

    :goto_7
    return-object v1

    :cond_8
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpURL;->getProtocolCharset()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/commons/httpclient/HttpURL;->decode([CLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_7
.end method

.method public setEscapedPassword(Ljava/lang/String;)V
    .registers 3
    .parameter "escapedPassword"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/URIException;
        }
    .end annotation

    .prologue
    .line 667
    if-nez p1, :cond_7

    const/4 v0, 0x0

    :goto_3
    invoke-virtual {p0, v0}, Lorg/apache/commons/httpclient/HttpURL;->setRawPassword([C)V

    .line 669
    return-void

    .line 667
    :cond_7
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    goto :goto_3
.end method

.method public setEscapedUser(Ljava/lang/String;)V
    .registers 3
    .parameter "escapedUser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/URIException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 573
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/httpclient/HttpURL;->setRawUser([C)V

    .line 574
    return-void
.end method

.method public setEscapedUserinfo(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "escapedUser"
    .parameter "escapedPassword"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/URIException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 513
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    if-nez p2, :cond_b

    const/4 v0, 0x0

    :goto_7
    invoke-virtual {p0, v1, v0}, Lorg/apache/commons/httpclient/HttpURL;->setRawUserinfo([C[C)V

    .line 515
    return-void

    .line 513
    :cond_b
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    goto :goto_7
.end method

.method public setPassword(Ljava/lang/String;)V
    .registers 4
    .parameter "password"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/URIException;
        }
    .end annotation

    .prologue
    .line 679
    if-nez p1, :cond_7

    const/4 v0, 0x0

    :goto_3
    invoke-virtual {p0, v0}, Lorg/apache/commons/httpclient/HttpURL;->setRawPassword([C)V

    .line 681
    return-void

    .line 679
    :cond_7
    sget-object v0, Lorg/apache/commons/httpclient/HttpURL;->allowed_within_userinfo:Ljava/util/BitSet;

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpURL;->getProtocolCharset()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lorg/apache/commons/httpclient/HttpURL;->encode(Ljava/lang/String;Ljava/util/BitSet;Ljava/lang/String;)[C

    move-result-object v0

    goto :goto_3
.end method

.method public setQuery(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "queryName"
    .parameter "queryValue"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/URIException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 775
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 777
    .local v0, buff:Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpURL;->getProtocolCharset()Ljava/lang/String;

    move-result-object v1

    .line 778
    .local v1, charset:Ljava/lang/String;
    sget-object v2, Lorg/apache/commons/httpclient/HttpURL;->allowed_within_query:Ljava/util/BitSet;

    invoke-static {p1, v2, v1}, Lorg/apache/commons/httpclient/HttpURL;->encode(Ljava/lang/String;Ljava/util/BitSet;Ljava/lang/String;)[C

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 779
    const/16 v2, 0x3d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 780
    sget-object v2, Lorg/apache/commons/httpclient/HttpURL;->allowed_within_query:Ljava/util/BitSet;

    invoke-static {p2, v2, v1}, Lorg/apache/commons/httpclient/HttpURL;->encode(Ljava/lang/String;Ljava/util/BitSet;Ljava/lang/String;)[C

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 781
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    iput-object v2, p0, Lorg/apache/commons/httpclient/HttpURL;->_query:[C

    .line 782
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpURL;->setURI()V

    .line 783
    return-void
.end method

.method public setQuery([Ljava/lang/String;[Ljava/lang/String;)V
    .registers 9
    .parameter "queryName"
    .parameter "queryValue"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/URIException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 799
    array-length v3, p1

    .line 800
    .local v3, length:I
    array-length v4, p2

    if-eq v3, v4, :cond_c

    .line 801
    new-instance v4, Lorg/apache/commons/httpclient/URIException;

    const-string v5, "wrong array size of query"

    invoke-direct {v4, v5}, Lorg/apache/commons/httpclient/URIException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 804
    :cond_c
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 806
    .local v0, buff:Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpURL;->getProtocolCharset()Ljava/lang/String;

    move-result-object v1

    .line 807
    .local v1, charset:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_16
    if-ge v2, v3, :cond_3f

    .line 808
    aget-object v4, p1, v2

    sget-object v5, Lorg/apache/commons/httpclient/HttpURL;->allowed_within_query:Ljava/util/BitSet;

    invoke-static {v4, v5, v1}, Lorg/apache/commons/httpclient/HttpURL;->encode(Ljava/lang/String;Ljava/util/BitSet;Ljava/lang/String;)[C

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 809
    const/16 v4, 0x3d

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 810
    aget-object v4, p2, v2

    sget-object v5, Lorg/apache/commons/httpclient/HttpURL;->allowed_within_query:Ljava/util/BitSet;

    invoke-static {v4, v5, v1}, Lorg/apache/commons/httpclient/HttpURL;->encode(Ljava/lang/String;Ljava/util/BitSet;Ljava/lang/String;)[C

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 811
    add-int/lit8 v4, v2, 0x1

    if-ge v4, v3, :cond_3c

    .line 812
    const/16 v4, 0x26

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 807
    :cond_3c
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 815
    :cond_3f
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    iput-object v4, p0, Lorg/apache/commons/httpclient/HttpURL;->_query:[C

    .line 816
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpURL;->setURI()V

    .line 817
    return-void
.end method

.method public setRawPassword([C)V
    .registers 11
    .parameter "escapedPassword"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/URIException;
        }
    .end annotation

    .prologue
    .line 639
    if-eqz p1, :cond_13

    sget-object v6, Lorg/apache/commons/httpclient/HttpURL;->within_userinfo:Ljava/util/BitSet;

    invoke-virtual {p0, p1, v6}, Lorg/apache/commons/httpclient/HttpURL;->validate([CLjava/util/BitSet;)Z

    move-result v6

    if-nez v6, :cond_13

    .line 641
    new-instance v6, Lorg/apache/commons/httpclient/URIException;

    const/4 v7, 0x3

    const-string v8, "escaped password not valid"

    invoke-direct {v6, v7, v8}, Lorg/apache/commons/httpclient/URIException;-><init>(ILjava/lang/String;)V

    throw v6

    .line 644
    :cond_13
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpURL;->getRawUser()[C

    move-result-object v6

    if-eqz v6, :cond_20

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpURL;->getRawUser()[C

    move-result-object v6

    array-length v6, v6

    if-nez v6, :cond_29

    .line 645
    :cond_20
    new-instance v6, Lorg/apache/commons/httpclient/URIException;

    const/4 v7, 0x1

    const-string v8, "username required"

    invoke-direct {v6, v7, v8}, Lorg/apache/commons/httpclient/URIException;-><init>(ILjava/lang/String;)V

    throw v6

    .line 647
    :cond_29
    new-instance v5, Ljava/lang/String;

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpURL;->getRawUser()[C

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([C)V

    .line 648
    .local v5, username:Ljava/lang/String;
    if-nez p1, :cond_80

    const/4 v3, 0x0

    .line 650
    .local v3, password:Ljava/lang/String;
    :goto_35
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    if-nez v3, :cond_86

    const-string v6, ""

    :goto_42
    invoke-virtual {v7, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 651
    .local v4, userinfo:Ljava/lang/String;
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpURL;->getRawHost()[C

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/lang/String;-><init>([C)V

    .line 652
    .local v1, hostname:Ljava/lang/String;
    iget v6, p0, Lorg/apache/commons/httpclient/HttpURL;->_port:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_9a

    move-object v2, v1

    .line 653
    .local v2, hostport:Ljava/lang/String;
    :goto_59
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "@"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 654
    .local v0, authority:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    iput-object v6, p0, Lorg/apache/commons/httpclient/HttpURL;->_userinfo:[C

    .line 655
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    iput-object v6, p0, Lorg/apache/commons/httpclient/HttpURL;->_authority:[C

    .line 656
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpURL;->setURI()V

    .line 657
    return-void

    .line 648
    .end local v0           #authority:Ljava/lang/String;
    .end local v1           #hostname:Ljava/lang/String;
    .end local v2           #hostport:Ljava/lang/String;
    .end local v3           #password:Ljava/lang/String;
    .end local v4           #userinfo:Ljava/lang/String;
    :cond_80
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p1}, Ljava/lang/String;-><init>([C)V

    goto :goto_35

    .line 650
    .restart local v3       #password:Ljava/lang/String;
    :cond_86
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, ":"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_42

    .line 652
    .restart local v1       #hostname:Ljava/lang/String;
    .restart local v4       #userinfo:Ljava/lang/String;
    :cond_9a
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    iget v7, p0, Lorg/apache/commons/httpclient/HttpURL;->_port:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_59
.end method

.method public setRawUser([C)V
    .registers 12
    .parameter "escapedUser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/URIException;
        }
    .end annotation

    .prologue
    .line 544
    if-eqz p1, :cond_5

    array-length v7, p1

    if-nez v7, :cond_e

    .line 545
    :cond_5
    new-instance v7, Lorg/apache/commons/httpclient/URIException;

    const/4 v8, 0x1

    const-string v9, "user required"

    invoke-direct {v7, v8, v9}, Lorg/apache/commons/httpclient/URIException;-><init>(ILjava/lang/String;)V

    throw v7

    .line 547
    :cond_e
    sget-object v7, Lorg/apache/commons/httpclient/HttpURL;->within_userinfo:Ljava/util/BitSet;

    invoke-virtual {p0, p1, v7}, Lorg/apache/commons/httpclient/HttpURL;->validate([CLjava/util/BitSet;)Z

    move-result v7

    if-nez v7, :cond_1f

    .line 548
    new-instance v7, Lorg/apache/commons/httpclient/URIException;

    const/4 v8, 0x3

    const-string v9, "escaped user not valid"

    invoke-direct {v7, v8, v9}, Lorg/apache/commons/httpclient/URIException;-><init>(ILjava/lang/String;)V

    throw v7

    .line 551
    :cond_1f
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, p1}, Ljava/lang/String;-><init>([C)V

    .line 552
    .local v6, username:Ljava/lang/String;
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpURL;->getRawPassword()[C

    move-result-object v4

    .line 553
    .local v4, rawPassword:[C
    if-nez v4, :cond_76

    const/4 v3, 0x0

    .line 554
    .local v3, password:Ljava/lang/String;
    :goto_2b
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    if-nez v3, :cond_7c

    const-string v7, ""

    :goto_38
    invoke-virtual {v8, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 555
    .local v5, userinfo:Ljava/lang/String;
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpURL;->getRawHost()[C

    move-result-object v7

    invoke-direct {v1, v7}, Ljava/lang/String;-><init>([C)V

    .line 556
    .local v1, hostname:Ljava/lang/String;
    iget v7, p0, Lorg/apache/commons/httpclient/HttpURL;->_port:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_90

    move-object v2, v1

    .line 557
    .local v2, hostport:Ljava/lang/String;
    :goto_4f
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "@"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 558
    .local v0, authority:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    iput-object v7, p0, Lorg/apache/commons/httpclient/HttpURL;->_userinfo:[C

    .line 559
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    iput-object v7, p0, Lorg/apache/commons/httpclient/HttpURL;->_authority:[C

    .line 560
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpURL;->setURI()V

    .line 561
    return-void

    .line 553
    .end local v0           #authority:Ljava/lang/String;
    .end local v1           #hostname:Ljava/lang/String;
    .end local v2           #hostport:Ljava/lang/String;
    .end local v3           #password:Ljava/lang/String;
    .end local v5           #userinfo:Ljava/lang/String;
    :cond_76
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([C)V

    goto :goto_2b

    .line 554
    .restart local v3       #password:Ljava/lang/String;
    :cond_7c
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, ":"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_38

    .line 556
    .restart local v1       #hostname:Ljava/lang/String;
    .restart local v5       #userinfo:Ljava/lang/String;
    :cond_90
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    iget v8, p0, Lorg/apache/commons/httpclient/HttpURL;->_port:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_4f
.end method

.method public setRawUserinfo([C[C)V
    .registers 12
    .parameter "escapedUser"
    .parameter "escapedPassword"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/URIException;
        }
    .end annotation

    .prologue
    .line 479
    if-eqz p1, :cond_5

    array-length v6, p1

    if-nez v6, :cond_e

    .line 480
    :cond_5
    new-instance v6, Lorg/apache/commons/httpclient/URIException;

    const/4 v7, 0x1

    const-string v8, "user required"

    invoke-direct {v6, v7, v8}, Lorg/apache/commons/httpclient/URIException;-><init>(ILjava/lang/String;)V

    throw v6

    .line 482
    :cond_e
    sget-object v6, Lorg/apache/commons/httpclient/HttpURL;->within_userinfo:Ljava/util/BitSet;

    invoke-virtual {p0, p1, v6}, Lorg/apache/commons/httpclient/HttpURL;->validate([CLjava/util/BitSet;)Z

    move-result v6

    if-eqz v6, :cond_20

    if-eqz p2, :cond_29

    sget-object v6, Lorg/apache/commons/httpclient/HttpURL;->within_userinfo:Ljava/util/BitSet;

    invoke-virtual {p0, p2, v6}, Lorg/apache/commons/httpclient/HttpURL;->validate([CLjava/util/BitSet;)Z

    move-result v6

    if-nez v6, :cond_29

    .line 485
    :cond_20
    new-instance v6, Lorg/apache/commons/httpclient/URIException;

    const/4 v7, 0x3

    const-string v8, "escaped userinfo not valid"

    invoke-direct {v6, v7, v8}, Lorg/apache/commons/httpclient/URIException;-><init>(ILjava/lang/String;)V

    throw v6

    .line 488
    :cond_29
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, p1}, Ljava/lang/String;-><init>([C)V

    .line 489
    .local v5, username:Ljava/lang/String;
    if-nez p2, :cond_7c

    const/4 v3, 0x0

    .line 491
    .local v3, password:Ljava/lang/String;
    :goto_31
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    if-nez v3, :cond_82

    const-string v6, ""

    :goto_3e
    invoke-virtual {v7, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 492
    .local v4, userinfo:Ljava/lang/String;
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpURL;->getRawHost()[C

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/lang/String;-><init>([C)V

    .line 493
    .local v1, hostname:Ljava/lang/String;
    iget v6, p0, Lorg/apache/commons/httpclient/HttpURL;->_port:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_96

    move-object v2, v1

    .line 494
    .local v2, hostport:Ljava/lang/String;
    :goto_55
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "@"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 495
    .local v0, authority:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    iput-object v6, p0, Lorg/apache/commons/httpclient/HttpURL;->_userinfo:[C

    .line 496
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    iput-object v6, p0, Lorg/apache/commons/httpclient/HttpURL;->_authority:[C

    .line 497
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpURL;->setURI()V

    .line 498
    return-void

    .line 489
    .end local v0           #authority:Ljava/lang/String;
    .end local v1           #hostname:Ljava/lang/String;
    .end local v2           #hostport:Ljava/lang/String;
    .end local v3           #password:Ljava/lang/String;
    .end local v4           #userinfo:Ljava/lang/String;
    :cond_7c
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p2}, Ljava/lang/String;-><init>([C)V

    goto :goto_31

    .line 491
    .restart local v3       #password:Ljava/lang/String;
    :cond_82
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, ":"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_3e

    .line 493
    .restart local v1       #hostname:Ljava/lang/String;
    .restart local v4       #userinfo:Ljava/lang/String;
    :cond_96
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    iget v7, p0, Lorg/apache/commons/httpclient/HttpURL;->_port:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_55
.end method

.method protected setURI()V
    .registers 5

    .prologue
    const/16 v3, 0x3a

    .line 840
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 842
    .local v0, buf:Ljava/lang/StringBuffer;
    iget-object v1, p0, Lorg/apache/commons/httpclient/HttpURL;->_scheme:[C

    if-eqz v1, :cond_13

    .line 843
    iget-object v1, p0, Lorg/apache/commons/httpclient/HttpURL;->_scheme:[C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 844
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 846
    :cond_13
    iget-boolean v1, p0, Lorg/apache/commons/httpclient/HttpURL;->_is_net_path:Z

    if-eqz v1, :cond_3a

    .line 847
    const-string v1, "//"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 848
    iget-object v1, p0, Lorg/apache/commons/httpclient/HttpURL;->_authority:[C

    if-eqz v1, :cond_3a

    .line 849
    iget-object v1, p0, Lorg/apache/commons/httpclient/HttpURL;->_userinfo:[C

    if-eqz v1, :cond_63

    .line 850
    iget-object v1, p0, Lorg/apache/commons/httpclient/HttpURL;->_host:[C

    if-eqz v1, :cond_3a

    .line 851
    iget-object v1, p0, Lorg/apache/commons/httpclient/HttpURL;->_host:[C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 852
    iget v1, p0, Lorg/apache/commons/httpclient/HttpURL;->_port:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3a

    .line 853
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 854
    iget v1, p0, Lorg/apache/commons/httpclient/HttpURL;->_port:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 862
    :cond_3a
    :goto_3a
    iget-object v1, p0, Lorg/apache/commons/httpclient/HttpURL;->_opaque:[C

    if-eqz v1, :cond_69

    iget-boolean v1, p0, Lorg/apache/commons/httpclient/HttpURL;->_is_opaque_part:Z

    if-eqz v1, :cond_69

    .line 863
    iget-object v1, p0, Lorg/apache/commons/httpclient/HttpURL;->_opaque:[C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 870
    :cond_47
    :goto_47
    iget-object v1, p0, Lorg/apache/commons/httpclient/HttpURL;->_query:[C

    if-eqz v1, :cond_55

    .line 871
    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 872
    iget-object v1, p0, Lorg/apache/commons/httpclient/HttpURL;->_query:[C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 875
    :cond_55
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/httpclient/HttpURL;->_uri:[C

    .line 876
    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/commons/httpclient/HttpURL;->hash:I

    .line 877
    return-void

    .line 858
    :cond_63
    iget-object v1, p0, Lorg/apache/commons/httpclient/HttpURL;->_authority:[C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    goto :goto_3a

    .line 864
    :cond_69
    iget-object v1, p0, Lorg/apache/commons/httpclient/HttpURL;->_path:[C

    if-eqz v1, :cond_47

    .line 866
    iget-object v1, p0, Lorg/apache/commons/httpclient/HttpURL;->_path:[C

    array-length v1, v1

    if-eqz v1, :cond_47

    .line 867
    iget-object v1, p0, Lorg/apache/commons/httpclient/HttpURL;->_path:[C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    goto :goto_47
.end method

.method public setUser(Ljava/lang/String;)V
    .registers 4
    .parameter "user"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/URIException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 585
    sget-object v0, Lorg/apache/commons/httpclient/HttpURL;->allowed_within_userinfo:Ljava/util/BitSet;

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpURL;->getProtocolCharset()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lorg/apache/commons/httpclient/HttpURL;->encode(Ljava/lang/String;Ljava/util/BitSet;Ljava/lang/String;)[C

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/httpclient/HttpURL;->setRawUser([C)V

    .line 586
    return-void
.end method

.method public setUserinfo(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "user"
    .parameter "password"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/URIException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 529
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpURL;->getProtocolCharset()Ljava/lang/String;

    move-result-object v0

    .line 530
    .local v0, charset:Ljava/lang/String;
    sget-object v1, Lorg/apache/commons/httpclient/HttpURL;->within_userinfo:Ljava/util/BitSet;

    invoke-static {p1, v1, v0}, Lorg/apache/commons/httpclient/HttpURL;->encode(Ljava/lang/String;Ljava/util/BitSet;Ljava/lang/String;)[C

    move-result-object v2

    if-nez p2, :cond_11

    const/4 v1, 0x0

    :goto_d
    invoke-virtual {p0, v2, v1}, Lorg/apache/commons/httpclient/HttpURL;->setRawUserinfo([C[C)V

    .line 534
    return-void

    .line 530
    :cond_11
    sget-object v1, Lorg/apache/commons/httpclient/HttpURL;->within_userinfo:Ljava/util/BitSet;

    invoke-static {p2, v1, v0}, Lorg/apache/commons/httpclient/HttpURL;->encode(Ljava/lang/String;Ljava/util/BitSet;Ljava/lang/String;)[C

    move-result-object v1

    goto :goto_d
.end method
