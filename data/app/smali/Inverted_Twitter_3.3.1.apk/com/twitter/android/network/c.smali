.class public Lcom/twitter/android/network/c;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/util/concurrent/atomic/AtomicLong;

.field private static final f:Z

.field private static final g:Lcom/twitter/android/util/SynchronizedDateFormat;

.field private static final h:[Lcom/twitter/android/network/f;


# instance fields
.field public b:I

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/Exception;

.field public e:Lcom/twitter/android/api/i;

.field private final i:Lorg/apache/http/client/methods/HttpRequestBase;

.field private final j:Lorg/apache/http/client/HttpClient;

.field private final k:[B

.field private final l:Ljava/io/OutputStream;

.field private final m:Lcom/twitter/android/network/l;

.field private n:[Lcom/twitter/android/network/f;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v3, 0x0

    sput-boolean v3, Lcom/twitter/android/network/c;->f:Z

    new-instance v0, Lcom/twitter/android/util/SynchronizedDateFormat;

    const-string v1, "EEE, dd MMM yyyy HH:mm:ss zzz"

    invoke-direct {v0, v1}, Lcom/twitter/android/util/SynchronizedDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/twitter/android/network/c;->g:Lcom/twitter/android/util/SynchronizedDateFormat;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lcom/twitter/android/network/c;->a:Ljava/util/concurrent/atomic/AtomicLong;

    new-array v0, v3, [Lcom/twitter/android/network/f;

    sput-object v0, Lcom/twitter/android/network/c;->h:[Lcom/twitter/android/network/f;

    return-void
.end method

.method public constructor <init>(Lcom/twitter/android/network/d;Lorg/apache/http/client/methods/HttpRequestBase;Ljava/io/OutputStream;)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/twitter/android/network/c;-><init>(Lcom/twitter/android/network/d;Lorg/apache/http/client/methods/HttpRequestBase;Ljava/io/OutputStream;Lcom/twitter/android/network/l;)V

    return-void
.end method

.method public constructor <init>(Lcom/twitter/android/network/d;Lorg/apache/http/client/methods/HttpRequestBase;Ljava/io/OutputStream;Lcom/twitter/android/network/l;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x800

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/twitter/android/network/c;->k:[B

    const-string v0, "Accept-Encoding"

    const-string v1, "gzip"

    invoke-virtual {p2, v0, v1}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/twitter/android/network/d;->a()Lorg/apache/http/client/HttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/network/c;->j:Lorg/apache/http/client/HttpClient;

    iput-object p2, p0, Lcom/twitter/android/network/c;->i:Lorg/apache/http/client/methods/HttpRequestBase;

    iput-object p3, p0, Lcom/twitter/android/network/c;->l:Ljava/io/OutputStream;

    iput-object p4, p0, Lcom/twitter/android/network/c;->m:Lcom/twitter/android/network/l;

    return-void
.end method

.method public static a(Lcom/twitter/android/network/d;Lcom/twitter/android/network/o;Ljava/lang/CharSequence;Lcom/twitter/android/network/a;Ljava/io/OutputStream;)Lcom/twitter/android/network/c;
    .registers 11

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/twitter/android/network/c;->a(Lcom/twitter/android/network/d;Lcom/twitter/android/network/o;Ljava/lang/CharSequence;Lcom/twitter/android/network/a;Lorg/apache/http/HttpEntity;Ljava/io/OutputStream;)Lcom/twitter/android/network/c;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/twitter/android/network/d;Lcom/twitter/android/network/o;Ljava/lang/CharSequence;Lcom/twitter/android/network/a;Ljava/util/ArrayList;Ljava/io/OutputStream;)Lcom/twitter/android/network/c;
    .registers 12

    const/4 v0, 0x0

    if-eqz p4, :cond_15

    :try_start_3
    new-instance v4, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v1, "UTF-8"

    invoke-direct {v4, p4, v1}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_a} :catch_14

    :goto_a
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/twitter/android/network/c;->a(Lcom/twitter/android/network/d;Lcom/twitter/android/network/o;Ljava/lang/CharSequence;Lcom/twitter/android/network/a;Lorg/apache/http/HttpEntity;Ljava/io/OutputStream;)Lcom/twitter/android/network/c;

    move-result-object v0

    return-object v0

    :catch_14
    move-exception v1

    :cond_15
    move-object v4, v0

    goto :goto_a
.end method

.method public static a(Lcom/twitter/android/network/d;Lcom/twitter/android/network/o;Ljava/lang/CharSequence;Lcom/twitter/android/network/a;Lorg/apache/http/HttpEntity;Ljava/io/OutputStream;)Lcom/twitter/android/network/c;
    .registers 8

    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    if-eqz p4, :cond_e

    invoke-virtual {v0, p4}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    :cond_e
    new-instance v1, Lcom/twitter/android/network/i;

    invoke-direct {v1, p0, v0, p3, p5}, Lcom/twitter/android/network/i;-><init>(Lcom/twitter/android/network/d;Lorg/apache/http/client/methods/HttpPost;Lcom/twitter/android/network/a;Ljava/io/OutputStream;)V

    invoke-virtual {p1, v1}, Lcom/twitter/android/network/o;->a(Lcom/twitter/android/network/c;)V

    return-object v1
.end method

.method public static a(Lcom/twitter/android/network/d;Lcom/twitter/android/network/o;Ljava/lang/CharSequence;Lcom/twitter/android/network/a;ZLjava/io/OutputStream;)Lcom/twitter/android/network/c;
    .registers 9

    new-instance v0, Lcom/twitter/android/network/h;

    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, p0, v1, p3, p5}, Lcom/twitter/android/network/h;-><init>(Lcom/twitter/android/network/d;Lorg/apache/http/client/methods/HttpGet;Lcom/twitter/android/network/a;Ljava/io/OutputStream;)V

    if-eqz p4, :cond_14

    invoke-virtual {p1, v0}, Lcom/twitter/android/network/o;->b(Lcom/twitter/android/network/c;)V

    :goto_13
    return-object v0

    :cond_14
    invoke-virtual {p1, v0}, Lcom/twitter/android/network/o;->a(Lcom/twitter/android/network/c;)V

    goto :goto_13
.end method

.method public static a(Lcom/twitter/android/network/d;Lcom/twitter/android/network/o;Ljava/lang/CharSequence;ZLjava/io/OutputStream;)Lcom/twitter/android/network/c;
    .registers 7

    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/twitter/android/network/c;

    invoke-direct {v1, p0, v0, p4}, Lcom/twitter/android/network/c;-><init>(Lcom/twitter/android/network/d;Lorg/apache/http/client/methods/HttpRequestBase;Ljava/io/OutputStream;)V

    if-eqz p3, :cond_14

    invoke-virtual {p1, v1}, Lcom/twitter/android/network/o;->b(Lcom/twitter/android/network/c;)V

    :goto_13
    return-object v1

    :cond_14
    invoke-virtual {p1, v1}, Lcom/twitter/android/network/o;->a(Lcom/twitter/android/network/c;)V

    goto :goto_13
.end method

.method private a(Lorg/apache/http/HttpResponse;Ljava/io/OutputStream;)V
    .registers 14

    const v9, 0x7a120

    const/4 v4, -0x1

    const/4 v2, 0x0

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    if-eqz v3, :cond_11

    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->isStreaming()Z

    move-result v0

    if-nez v0, :cond_12

    :cond_11
    :goto_11
    return-void

    :cond_12
    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v0

    if-eqz v0, :cond_d0

    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    :goto_20
    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v6

    long-to-int v3, v6

    sget-boolean v6, Lcom/twitter/android/network/c;->f:Z

    if-eqz v6, :cond_5d

    const-string v6, "HttpOperation"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "read: Encoding: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", length: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5d
    if-eqz v5, :cond_11

    const-string v6, "application/octet-stream"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_6f

    const-string v6, "binary/octet-stream"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_d3

    :cond_6f
    move-object v10, v1

    move v1, v3

    move-object v3, v10

    :goto_72
    if-eqz p2, :cond_81

    iget-object v0, p0, Lcom/twitter/android/network/c;->m:Lcom/twitter/android/network/l;

    if-eqz v0, :cond_81

    new-instance v0, Lcom/twitter/android/network/b;

    int-to-long v6, v1

    iget-object v8, p0, Lcom/twitter/android/network/c;->m:Lcom/twitter/android/network/l;

    invoke-direct {v0, p2, v6, v7, v8}, Lcom/twitter/android/network/b;-><init>(Ljava/io/OutputStream;JLcom/twitter/android/network/l;)V

    move-object p2, v0

    :cond_81
    iget-object v6, p0, Lcom/twitter/android/network/c;->k:[B

    if-gez v1, :cond_13d

    move v0, v2

    :cond_86
    const/4 v1, 0x0

    :try_start_87
    array-length v7, v6

    invoke-virtual {v3, v6, v1, v7}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    if-eq v1, v4, :cond_192

    if-eqz p2, :cond_94

    const/4 v7, 0x0

    invoke-virtual {p2, v6, v7, v1}, Ljava/io/OutputStream;->write([BII)V

    :cond_94
    add-int/2addr v0, v1

    if-le v0, v9, :cond_86

    new-instance v1, Lcom/twitter/android/network/ContentLengthIOException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Content too large (length unknown): "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, " ("

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ")"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/twitter/android/network/ContentLengthIOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_bc
    .catchall {:try_start_87 .. :try_end_bc} :catchall_bc

    :catchall_bc
    move-exception v0

    :cond_bd
    array-length v1, v6

    invoke-virtual {v3, v6, v2, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    if-ne v1, v4, :cond_bd

    invoke-static {v3}, Lcom/twitter/android/util/x;->a(Ljava/io/Closeable;)V

    if-eqz p2, :cond_cf

    :try_start_c9
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V
    :try_end_cf
    .catch Ljava/io/IOException; {:try_start_c9 .. :try_end_cf} :catch_1a9

    :cond_cf
    :goto_cf
    throw v0

    :cond_d0
    const/4 v0, 0x0

    goto/16 :goto_20

    :cond_d3
    const-string v6, "application/json"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_ed

    if-eqz v0, :cond_1ac

    const-string v6, "gzip"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1ac

    new-instance v0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v0, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v3, v0

    move v1, v4

    goto :goto_72

    :cond_ed
    const-string v6, "text/html"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_10d

    const-string v6, "text/plain"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_10d

    const-string v6, "text/xml"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_10d

    const-string v6, "application/xml"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_120

    :cond_10d
    if-eqz v0, :cond_1ac

    const-string v6, "gzip"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1ac

    new-instance v0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v0, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v3, v0

    move v1, v4

    goto/16 :goto_72

    :cond_120
    const-string v0, "image/"

    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1ac

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported content type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13d
    if-le v1, v9, :cond_164

    :try_start_13f
    new-instance v0, Lcom/twitter/android/network/ContentLengthIOException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Content too large: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, " ("

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ")"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/twitter/android/network/ContentLengthIOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_164
    move v0, v1

    :cond_165
    :goto_165
    if-lez v0, :cond_192

    const/4 v1, 0x0

    array-length v5, v6

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-virtual {v3, v6, v1, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    if-ne v1, v4, :cond_188

    new-instance v1, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "Invalid content length: "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_188
    if-lez v1, :cond_165

    sub-int/2addr v0, v1

    if-eqz p2, :cond_165

    const/4 v5, 0x0

    invoke-virtual {p2, v6, v5, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_191
    .catchall {:try_start_13f .. :try_end_191} :catchall_bc

    goto :goto_165

    :cond_192
    array-length v0, v6

    invoke-virtual {v3, v6, v2, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-ne v0, v4, :cond_192

    invoke-static {v3}, Lcom/twitter/android/util/x;->a(Ljava/io/Closeable;)V

    if-eqz p2, :cond_11

    :try_start_19e
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V
    :try_end_1a4
    .catch Ljava/io/IOException; {:try_start_19e .. :try_end_1a4} :catch_1a6

    goto/16 :goto_11

    :catch_1a6
    move-exception v0

    goto/16 :goto_11

    :catch_1a9
    move-exception v1

    goto/16 :goto_cf

    :cond_1ac
    move-object v10, v1

    move v1, v3

    move-object v3, v10

    goto/16 :goto_72
.end method


# virtual methods
.method public final a()Lcom/twitter/android/network/c;
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/twitter/android/network/c;->a(I)Lcom/twitter/android/network/c;

    move-result-object v0

    return-object v0
.end method

.method public final a(I)Lcom/twitter/android/network/c;
    .registers 16

    const/4 v0, 0x0

    iget-object v4, p0, Lcom/twitter/android/network/c;->l:Ljava/io/OutputStream;

    iget-object v5, p0, Lcom/twitter/android/network/c;->i:Lorg/apache/http/client/methods/HttpRequestBase;

    new-instance v6, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v6, v1}, Ljava/util/ArrayList;-><init>(I)V

    :cond_11
    sget-object v1, Lcom/twitter/android/network/c;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/twitter/android/network/c;->a(J)V

    sget-boolean v1, Lcom/twitter/android/network/c;->f:Z

    if-eqz v1, :cond_42

    const-string v1, "HttpOperation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lorg/apache/http/client/methods/HttpRequestBase;->getMethod()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v5}, Lorg/apache/http/client/methods/HttpRequestBase;->getURI()Ljava/net/URI;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_42
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    :try_start_46
    iget-object v1, p0, Lcom/twitter/android/network/c;->j:Lorg/apache/http/client/HttpClient;

    invoke-interface {v1, v5}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v1

    sget-boolean v3, Lcom/twitter/android/network/c;->f:Z

    if-eqz v3, :cond_8c

    const-string v3, "HttpOperation"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Lorg/apache/http/client/methods/HttpRequestBase;->getURI()Ljava/net/URI;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8c
    sparse-switch v2, :sswitch_data_1d6

    const/4 p1, 0x0

    :cond_90
    :goto_90
    :sswitch_90
    if-gtz p1, :cond_168

    const-string v3, "X-RateLimit-Limit"

    invoke-interface {v9, v3}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v3

    if-eqz v3, :cond_15f

    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const-string v3, "X-RateLimit-Remaining"

    invoke-interface {v9, v3}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v3

    if-eqz v3, :cond_162

    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const-string v3, "X-RateLimit-Reset"

    invoke-interface {v9, v3}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v3

    if-eqz v3, :cond_165

    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    const-wide/16 v12, 0x3e8

    mul-long/2addr v10, v12

    new-instance v3, Lcom/twitter/android/api/i;

    invoke-direct {v3, v8, v7, v10, v11}, Lcom/twitter/android/api/i;-><init>(IIJ)V

    :goto_d6
    iput-object v3, p0, Lcom/twitter/android/network/c;->e:Lcom/twitter/android/api/i;

    invoke-direct {p0, v9, v4}, Lcom/twitter/android/network/c;->a(Lorg/apache/http/HttpResponse;Ljava/io/OutputStream;)V
    :try_end_db
    .catchall {:try_start_46 .. :try_end_db} :catchall_1d1
    .catch Lcom/twitter/android/network/ContentLengthIOException; {:try_start_46 .. :try_end_db} :catch_114
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_db} :catch_18a

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    :goto_de
    iput v2, p0, Lcom/twitter/android/network/c;->b:I

    iput-object v1, p0, Lcom/twitter/android/network/c;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/android/network/c;->d:Ljava/lang/Exception;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/twitter/android/network/f;

    iput-object v0, p0, Lcom/twitter/android/network/c;->n:[Lcom/twitter/android/network/f;

    iget-object v0, p0, Lcom/twitter/android/network/c;->n:[Lcom/twitter/android/network/f;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object p0

    :sswitch_f2
    :try_start_f2
    const-string v3, "Date"

    invoke-interface {v9, v3}, Lorg/apache/http/HttpResponse;->getLastHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v3

    if-eqz v3, :cond_90

    sget-object v10, Lcom/twitter/android/network/c;->g:Lcom/twitter/android/util/SynchronizedDateFormat;

    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Lcom/twitter/android/util/SynchronizedDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sget-object v3, Lcom/twitter/android/network/c;->a:Ljava/util/concurrent/atomic/AtomicLong;

    sub-long/2addr v10, v12

    invoke-virtual {v3, v10, v11}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V
    :try_end_112
    .catchall {:try_start_f2 .. :try_end_112} :catchall_1d1
    .catch Lcom/twitter/android/network/ContentLengthIOException; {:try_start_f2 .. :try_end_112} :catch_114
    .catch Ljava/lang/Exception; {:try_start_f2 .. :try_end_112} :catch_18a

    goto/16 :goto_90

    :catch_114
    move-exception v0

    :try_start_115
    sget-boolean v1, Lcom/twitter/android/network/c;->f:Z

    if-eqz v1, :cond_151

    const-string v1, "HttpOperation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/twitter/android/network/ContentLengthIOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v5}, Lorg/apache/http/client/methods/HttpRequestBase;->getURI()Ljava/net/URI;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_151
    invoke-virtual {v5}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V

    const/16 v2, 0x1a1

    invoke-virtual {v0}, Lcom/twitter/android/network/ContentLengthIOException;->getMessage()Ljava/lang/String;
    :try_end_159
    .catchall {:try_start_115 .. :try_end_159} :catchall_1d1

    move-result-object v1

    const/4 v0, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    goto :goto_de

    :cond_15f
    const/4 v3, 0x0

    goto/16 :goto_d6

    :cond_162
    const/4 v3, 0x0

    goto/16 :goto_d6

    :cond_165
    const/4 v3, 0x0

    goto/16 :goto_d6

    :cond_168
    const/4 v3, 0x0

    :try_start_169
    invoke-direct {p0, v9, v3}, Lcom/twitter/android/network/c;->a(Lorg/apache/http/HttpResponse;Ljava/io/OutputStream;)V
    :try_end_16c
    .catchall {:try_start_169 .. :try_end_16c} :catchall_1d1
    .catch Lcom/twitter/android/network/ContentLengthIOException; {:try_start_169 .. :try_end_16c} :catch_114
    .catch Ljava/lang/Exception; {:try_start_169 .. :try_end_16c} :catch_18a

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long v7, v9, v7

    new-instance v3, Lcom/twitter/android/network/f;

    invoke-direct {v3, v2, v1}, Lcom/twitter/android/network/f;-><init>(ILjava/lang/String;)V

    const/4 v9, 0x0

    iput-object v9, v3, Lcom/twitter/android/network/f;->c:Ljava/lang/Exception;

    iput-wide v7, v3, Lcom/twitter/android/network/f;->d:J

    new-instance v3, Lcom/twitter/android/network/f;

    invoke-direct {v3, v2, v1}, Lcom/twitter/android/network/f;-><init>(ILjava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, -0x1

    if-gez p1, :cond_11

    goto/16 :goto_de

    :catch_18a
    move-exception v0

    :try_start_18b
    sget-boolean v1, Lcom/twitter/android/network/c;->f:Z

    if-eqz v1, :cond_1c7

    const-string v1, "HttpOperation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v5}, Lorg/apache/http/client/methods/HttpRequestBase;->getURI()Ljava/net/URI;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c7
    invoke-virtual {v5}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V
    :try_end_1ca
    .catchall {:try_start_18b .. :try_end_1ca} :catchall_1d1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    goto/16 :goto_de

    :catchall_1d1
    move-exception v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    throw v0

    :sswitch_data_1d6
    .sparse-switch
        0x191 -> :sswitch_f2
        0x1f4 -> :sswitch_90
        0x1f6 -> :sswitch_90
        0x1f7 -> :sswitch_90
    .end sparse-switch
.end method

.method protected a(J)V
    .registers 3

    return-void
.end method

.method public final b()Z
    .registers 3

    iget v0, p0, Lcom/twitter/android/network/c;->b:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final c()[Lcom/twitter/android/network/f;
    .registers 2

    iget-object v0, p0, Lcom/twitter/android/network/c;->n:[Lcom/twitter/android/network/f;

    if-nez v0, :cond_7

    sget-object v0, Lcom/twitter/android/network/c;->h:[Lcom/twitter/android/network/f;

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/twitter/android/network/c;->n:[Lcom/twitter/android/network/f;

    goto :goto_6
.end method

.method public final d()Lorg/apache/http/client/methods/HttpRequestBase;
    .registers 2

    iget-object v0, p0, Lcom/twitter/android/network/c;->i:Lorg/apache/http/client/methods/HttpRequestBase;

    return-object v0
.end method
