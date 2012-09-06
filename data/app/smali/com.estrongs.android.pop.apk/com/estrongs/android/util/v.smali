.class public Lcom/estrongs/android/util/v;
.super Ljava/lang/Object;


# instance fields
.field public final a:I

.field public final b:I

.field public c:I

.field public d:Ljava/lang/Object;

.field public e:Ljava/lang/Object;

.field private final f:I

.field private final g:I

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Lcom/estrongs/android/util/y;

.field private l:J

.field private m:J

.field private n:Ljava/lang/Object;

.field private o:Ljava/lang/Thread;

.field private p:Z

.field private q:Ljava/lang/String;

.field private r:[Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 6

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x4e20

    iput v0, p0, Lcom/estrongs/android/util/v;->f:I

    const v0, 0xea60

    iput v0, p0, Lcom/estrongs/android/util/v;->g:I

    iput v3, p0, Lcom/estrongs/android/util/v;->a:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/estrongs/android/util/v;->b:I

    iput v3, p0, Lcom/estrongs/android/util/v;->c:I

    iput-object v2, p0, Lcom/estrongs/android/util/v;->h:Ljava/lang/String;

    iput-object v2, p0, Lcom/estrongs/android/util/v;->i:Ljava/lang/String;

    iput-object v2, p0, Lcom/estrongs/android/util/v;->j:Ljava/lang/String;

    iput-object v2, p0, Lcom/estrongs/android/util/v;->k:Lcom/estrongs/android/util/y;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/estrongs/android/util/v;->l:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/estrongs/android/util/v;->m:J

    iput-object v2, p0, Lcom/estrongs/android/util/v;->n:Ljava/lang/Object;

    iput-object v2, p0, Lcom/estrongs/android/util/v;->o:Ljava/lang/Thread;

    iput-boolean v3, p0, Lcom/estrongs/android/util/v;->p:Z

    iput-object v2, p0, Lcom/estrongs/android/util/v;->d:Ljava/lang/Object;

    iput-object v2, p0, Lcom/estrongs/android/util/v;->e:Ljava/lang/Object;

    const-string v0, "GET"

    iput-object v0, p0, Lcom/estrongs/android/util/v;->q:Ljava/lang/String;

    iput-object v2, p0, Lcom/estrongs/android/util/v;->r:[Ljava/lang/Object;

    iput-object p1, p0, Lcom/estrongs/android/util/v;->i:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/util/v;)V
    .registers 1

    invoke-direct {p0}, Lcom/estrongs/android/util/v;->k()V

    return-void
.end method

.method private j()V
    .registers 2

    new-instance v0, Lcom/estrongs/android/util/w;

    invoke-direct {v0, p0}, Lcom/estrongs/android/util/w;-><init>(Lcom/estrongs/android/util/v;)V

    iput-object v0, p0, Lcom/estrongs/android/util/v;->o:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/estrongs/android/util/v;->o:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private k()V
    .registers 14

    const/4 v12, 0x1

    const/4 v1, 0x0

    const-wide/16 v10, 0x0

    const/4 v9, 0x0

    :try_start_5
    new-instance v2, Ljava/net/URL;

    iget-object v0, p0, Lcom/estrongs/android/util/v;->i:Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/estrongs/android/util/v;->c:I

    if-nez v0, :cond_23c

    iget-object v0, p0, Lcom/estrongs/android/util/v;->j:Ljava/lang/String;

    if-eqz v0, :cond_23c

    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lcom/estrongs/android/util/v;->j:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v3, v0

    :goto_1c
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    const/16 v2, 0x4e20

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const v2, 0xea60

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    iget-object v2, p0, Lcom/estrongs/android/util/v;->q:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    iget v2, p0, Lcom/estrongs/android/util/v;->c:I

    if-nez v2, :cond_e1

    if-eqz v3, :cond_e1

    iget-wide v4, p0, Lcom/estrongs/android/util/v;->m:J

    cmp-long v2, v4, v10

    if-lez v2, :cond_e1

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    cmp-long v2, v4, v10

    if-lez v2, :cond_e1

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/estrongs/android/util/v;->m:J

    const-string v2, "Range"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "bytes="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v5, p0, Lcom/estrongs/android/util/v;->m:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :goto_68
    iget-object v2, p0, Lcom/estrongs/android/util/v;->r:[Ljava/lang/Object;

    if-eqz v2, :cond_72

    move v2, v9

    :goto_6d
    iget-object v4, p0, Lcom/estrongs/android/util/v;->r:[Ljava/lang/Object;

    array-length v4, v4

    if-lt v2, v4, :cond_106

    :cond_72
    const-string v2, "Cache-Control"

    const-string v4, "no-cache"

    invoke-virtual {v0, v2, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Pragma"

    const-string v4, "no-cache"

    invoke-virtual {v0, v2, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Accept-Encoding"

    const-string v4, "identity"

    invoke-virtual {v0, v2, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/estrongs/android/util/v;->q:Ljava/lang/String;

    const-string v4, "POST"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_133

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    :goto_95
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    iget-object v2, p0, Lcom/estrongs/android/util/v;->k:Lcom/estrongs/android/util/y;

    if-eqz v2, :cond_a3

    iget-object v2, p0, Lcom/estrongs/android/util/v;->k:Lcom/estrongs/android/util/y;

    iget-object v4, p0, Lcom/estrongs/android/util/v;->n:Ljava/lang/Object;

    invoke-interface {v2, v4}, Lcom/estrongs/android/util/y;->a(Ljava/lang/Object;)V

    :cond_a3
    iget-wide v4, p0, Lcom/estrongs/android/util/v;->m:J

    cmp-long v2, v4, v10

    if-nez v2, :cond_b1

    if-eqz v3, :cond_b1

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    :cond_b1
    if-eqz v3, :cond_239

    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v4, "rw"

    invoke-direct {v2, v3, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_ba
    .catchall {:try_start_5 .. :try_end_ba} :catchall_139
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_ba} :catch_e6

    :try_start_ba
    iget-wide v3, p0, Lcom/estrongs/android/util/v;->m:J

    invoke-virtual {v2, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V
    :try_end_bf
    .catchall {:try_start_ba .. :try_end_bf} :catchall_227
    .catch Ljava/lang/Exception; {:try_start_ba .. :try_end_bf} :catch_232

    move-object v7, v2

    :goto_c0
    :try_start_c0
    iget-boolean v2, p0, Lcom/estrongs/android/util/v;->p:Z

    if-eqz v2, :cond_14b

    iget-object v0, p0, Lcom/estrongs/android/util/v;->k:Lcom/estrongs/android/util/y;

    if-eqz v0, :cond_d6

    iget-object v0, p0, Lcom/estrongs/android/util/v;->k:Lcom/estrongs/android/util/y;

    iget-object v2, p0, Lcom/estrongs/android/util/v;->n:Ljava/lang/Object;

    new-instance v3, Ljava/lang/Exception;

    const-string v4, "UserCannelled"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2, v3}, Lcom/estrongs/android/util/y;->a(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_d6
    .catchall {:try_start_c0 .. :try_end_d6} :catchall_22b
    .catch Ljava/lang/Exception; {:try_start_c0 .. :try_end_d6} :catch_235

    :cond_d6
    :goto_d6
    if-eqz v7, :cond_db

    :try_start_d8
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V

    :cond_db
    if-eqz v1, :cond_e0

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_e0
    .catch Ljava/lang/Exception; {:try_start_d8 .. :try_end_e0} :catch_146

    :cond_e0
    :goto_e0
    return-void

    :cond_e1
    const-wide/16 v4, 0x0

    :try_start_e3
    iput-wide v4, p0, Lcom/estrongs/android/util/v;->m:J
    :try_end_e5
    .catchall {:try_start_e3 .. :try_end_e5} :catchall_139
    .catch Ljava/lang/Exception; {:try_start_e3 .. :try_end_e5} :catch_e6

    goto :goto_68

    :catch_e6
    move-exception v0

    move-object v2, v1

    :goto_e8
    :try_start_e8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v3, p0, Lcom/estrongs/android/util/v;->k:Lcom/estrongs/android/util/y;

    if-eqz v3, :cond_f6

    iget-object v3, p0, Lcom/estrongs/android/util/v;->k:Lcom/estrongs/android/util/y;

    iget-object v4, p0, Lcom/estrongs/android/util/v;->n:Ljava/lang/Object;

    invoke-interface {v3, v4, v0}, Lcom/estrongs/android/util/y;->a(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_f6
    .catchall {:try_start_e8 .. :try_end_f6} :catchall_227

    :cond_f6
    if-eqz v2, :cond_fb

    :try_start_f8
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    :cond_fb
    if-eqz v1, :cond_e0

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_100
    .catch Ljava/lang/Exception; {:try_start_f8 .. :try_end_100} :catch_101

    goto :goto_e0

    :catch_101
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_e0

    :cond_106
    :try_start_106
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/estrongs/android/util/v;->r:[Ljava/lang/Object;

    add-int/lit8 v6, v2, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/estrongs/android/util/v;->r:[Ljava/lang/Object;

    add-int/lit8 v7, v2, 0x1

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x2

    goto/16 :goto_6d

    :cond_133
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V
    :try_end_137
    .catchall {:try_start_106 .. :try_end_137} :catchall_139
    .catch Ljava/lang/Exception; {:try_start_106 .. :try_end_137} :catch_e6

    goto/16 :goto_95

    :catchall_139
    move-exception v0

    move-object v7, v1

    :goto_13b
    if-eqz v7, :cond_140

    :try_start_13d
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V

    :cond_140
    if-eqz v1, :cond_145

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_145
    .catch Ljava/lang/Exception; {:try_start_13d .. :try_end_145} :catch_221

    :cond_145
    :goto_145
    throw v0

    :catch_146
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_e0

    :cond_14b
    :try_start_14b
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_14e
    .catchall {:try_start_14b .. :try_end_14e} :catchall_22b
    .catch Ljava/lang/Exception; {:try_start_14b .. :try_end_14e} :catch_235

    move-result-object v6

    :try_start_14f
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v0

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/estrongs/android/util/v;->m:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/estrongs/android/util/v;->l:J

    iget-wide v0, p0, Lcom/estrongs/android/util/v;->l:J

    cmp-long v0, v0, v10

    if-gez v0, :cond_174

    iget-object v0, p0, Lcom/estrongs/android/util/v;->k:Lcom/estrongs/android/util/y;

    if-eqz v0, :cond_174

    iget-object v0, p0, Lcom/estrongs/android/util/v;->k:Lcom/estrongs/android/util/y;

    iget-object v1, p0, Lcom/estrongs/android/util/v;->n:Ljava/lang/Object;

    new-instance v2, Ljava/lang/Exception;

    const-string v3, "error"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Lcom/estrongs/android/util/y;->a(Ljava/lang/Object;Ljava/lang/Throwable;)V

    move-object v1, v6

    goto/16 :goto_d6

    :cond_174
    const/4 v0, 0x0

    check-cast v0, [B

    iget v0, p0, Lcom/estrongs/android/util/v;->c:I

    if-ne v0, v12, :cond_1cd

    iget-wide v0, p0, Lcom/estrongs/android/util/v;->l:J

    long-to-int v0, v0

    new-array v0, v0, [B

    move-object v10, v0

    :goto_181
    iget-object v0, p0, Lcom/estrongs/android/util/v;->k:Lcom/estrongs/android/util/y;

    if-eqz v0, :cond_190

    iget-object v0, p0, Lcom/estrongs/android/util/v;->k:Lcom/estrongs/android/util/y;

    iget-object v1, p0, Lcom/estrongs/android/util/v;->n:Ljava/lang/Object;

    iget-wide v2, p0, Lcom/estrongs/android/util/v;->l:J

    iget-wide v4, p0, Lcom/estrongs/android/util/v;->m:J

    invoke-interface/range {v0 .. v5}, Lcom/estrongs/android/util/y;->a(Ljava/lang/Object;JJ)V

    :cond_190
    move v8, v9

    :cond_191
    :goto_191
    array-length v0, v10

    sub-int/2addr v0, v8

    invoke-virtual {v6, v10, v8, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    if-lez v1, :cond_1a5

    iget-wide v2, p0, Lcom/estrongs/android/util/v;->m:J

    iget-wide v4, p0, Lcom/estrongs/android/util/v;->l:J

    cmp-long v0, v2, v4

    if-gez v0, :cond_1a5

    iget-boolean v0, p0, Lcom/estrongs/android/util/v;->p:Z

    if-eqz v0, :cond_1d3

    :cond_1a5
    iget-boolean v0, p0, Lcom/estrongs/android/util/v;->p:Z

    if-eqz v0, :cond_1f9

    iget-object v0, p0, Lcom/estrongs/android/util/v;->k:Lcom/estrongs/android/util/y;

    if-eqz v0, :cond_1bb

    iget-object v0, p0, Lcom/estrongs/android/util/v;->k:Lcom/estrongs/android/util/y;

    iget-object v1, p0, Lcom/estrongs/android/util/v;->n:Ljava/lang/Object;

    new-instance v2, Ljava/lang/Exception;

    const-string v3, "UserCannelled"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Lcom/estrongs/android/util/y;->a(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_1bb
    .catchall {:try_start_14f .. :try_end_1bb} :catchall_22e
    .catch Ljava/lang/Exception; {:try_start_14f .. :try_end_1bb} :catch_1f0

    :cond_1bb
    if-eqz v7, :cond_1c0

    :try_start_1bd
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V

    :cond_1c0
    if-eqz v6, :cond_e0

    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_1c5
    .catch Ljava/lang/Exception; {:try_start_1bd .. :try_end_1c5} :catch_1c7

    goto/16 :goto_e0

    :catch_1c7
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_e0

    :cond_1cd
    const/16 v0, 0x4000

    :try_start_1cf
    new-array v0, v0, [B

    move-object v10, v0

    goto :goto_181

    :cond_1d3
    if-eqz v7, :cond_1f5

    const/4 v0, 0x0

    invoke-virtual {v7, v10, v0, v1}, Ljava/io/RandomAccessFile;->write([BII)V

    move v8, v9

    :goto_1da
    iget-wide v2, p0, Lcom/estrongs/android/util/v;->m:J

    int-to-long v0, v1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/estrongs/android/util/v;->m:J

    iget-object v0, p0, Lcom/estrongs/android/util/v;->k:Lcom/estrongs/android/util/y;

    if-eqz v0, :cond_191

    iget-object v0, p0, Lcom/estrongs/android/util/v;->k:Lcom/estrongs/android/util/y;

    iget-object v1, p0, Lcom/estrongs/android/util/v;->n:Ljava/lang/Object;

    iget-wide v2, p0, Lcom/estrongs/android/util/v;->l:J

    iget-wide v4, p0, Lcom/estrongs/android/util/v;->m:J

    invoke-interface/range {v0 .. v5}, Lcom/estrongs/android/util/y;->a(Ljava/lang/Object;JJ)V

    goto :goto_191

    :catch_1f0
    move-exception v0

    move-object v1, v6

    move-object v2, v7

    goto/16 :goto_e8

    :cond_1f5
    add-int v0, v8, v1

    move v8, v0

    goto :goto_1da

    :cond_1f9
    iget v0, p0, Lcom/estrongs/android/util/v;->c:I

    if-ne v0, v12, :cond_204

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v10}, Ljava/lang/String;-><init>([B)V

    iput-object v0, p0, Lcom/estrongs/android/util/v;->h:Ljava/lang/String;

    :cond_204
    iget-object v0, p0, Lcom/estrongs/android/util/v;->k:Lcom/estrongs/android/util/y;

    if-eqz v0, :cond_20f

    iget-object v0, p0, Lcom/estrongs/android/util/v;->k:Lcom/estrongs/android/util/y;

    iget-object v1, p0, Lcom/estrongs/android/util/v;->n:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/estrongs/android/util/y;->b(Ljava/lang/Object;)V
    :try_end_20f
    .catchall {:try_start_1cf .. :try_end_20f} :catchall_22e
    .catch Ljava/lang/Exception; {:try_start_1cf .. :try_end_20f} :catch_1f0

    :cond_20f
    if-eqz v7, :cond_214

    :try_start_211
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V

    :cond_214
    if-eqz v6, :cond_e0

    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_219
    .catch Ljava/lang/Exception; {:try_start_211 .. :try_end_219} :catch_21b

    goto/16 :goto_e0

    :catch_21b
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_e0

    :catch_221
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_145

    :catchall_227
    move-exception v0

    move-object v7, v2

    goto/16 :goto_13b

    :catchall_22b
    move-exception v0

    goto/16 :goto_13b

    :catchall_22e
    move-exception v0

    move-object v1, v6

    goto/16 :goto_13b

    :catch_232
    move-exception v0

    goto/16 :goto_e8

    :catch_235
    move-exception v0

    move-object v2, v7

    goto/16 :goto_e8

    :cond_239
    move-object v7, v1

    goto/16 :goto_c0

    :cond_23c
    move-object v3, v1

    goto/16 :goto_1c
.end method


# virtual methods
.method public a()J
    .registers 3

    iget-wide v0, p0, Lcom/estrongs/android/util/v;->m:J

    return-wide v0
.end method

.method public a(Lcom/estrongs/android/util/y;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/util/v;->k:Lcom/estrongs/android/util/y;

    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/util/v;->n:Ljava/lang/Object;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 4

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->N(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_f

    :goto_c
    iput-object p1, p0, Lcom/estrongs/android/util/v;->j:Ljava/lang/String;

    return-void

    :catch_f
    move-exception v0

    goto :goto_c
.end method

.method public b()V
    .registers 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/util/v;->p:Z

    :try_start_3
    iget-object v0, p0, Lcom/estrongs/android/util/v;->o:Ljava/lang/Thread;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Ljava/lang/Thread;->join(J)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_a} :catch_b

    :goto_a
    return-void

    :catch_b
    move-exception v0

    goto :goto_a
.end method

.method public c()V
    .registers 3

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/estrongs/android/util/v;->m:J

    invoke-direct {p0}, Lcom/estrongs/android/util/v;->j()V

    return-void
.end method

.method public d()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/util/v;->h:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/util/v;->j:Ljava/lang/String;

    return-object v0
.end method

.method public f()V
    .registers 5

    iget-wide v0, p0, Lcom/estrongs/android/util/v;->m:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_15

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/estrongs/android/util/v;->j:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/estrongs/android/util/v;->m:J

    :cond_15
    new-instance v0, Lcom/estrongs/android/util/x;

    invoke-direct {v0, p0}, Lcom/estrongs/android/util/x;-><init>(Lcom/estrongs/android/util/v;)V

    iput-object v0, p0, Lcom/estrongs/android/util/v;->o:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/estrongs/android/util/v;->o:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public g()J
    .registers 3

    iget-wide v0, p0, Lcom/estrongs/android/util/v;->l:J

    return-wide v0
.end method

.method public h()V
    .registers 3

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/estrongs/android/util/v;->j:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-void
.end method

.method public i()Z
    .registers 2

    iget-boolean v0, p0, Lcom/estrongs/android/util/v;->p:Z

    return v0
.end method
