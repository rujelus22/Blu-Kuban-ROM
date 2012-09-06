.class public Lcom/estrongs/android/pop/c/a;
.super Lcom/estrongs/android/pop/c/c;


# instance fields
.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 4

    invoke-direct {p0, p2}, Lcom/estrongs/android/pop/c/c;-><init>(I)V

    const-string v0, "ESHttpServer"

    iput-object v0, p0, Lcom/estrongs/android/pop/c/a;->c:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/pop/c/a;->d:Ljava/lang/String;

    iput-object p1, p0, Lcom/estrongs/android/pop/c/a;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;JJ)Lcom/estrongs/android/pop/c/f;
    .registers 19

    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->q(Ljava/lang/String;)I

    move-result v6

    const/4 v2, 0x1

    if-ne v6, v2, :cond_b2

    :try_start_7
    new-instance v3, Ljcifs/smb/ba;

    invoke-direct {v3, p1}, Ljcifs/smb/ba;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljcifs/smb/ba;->s()Z

    move-result v2

    if-nez v2, :cond_1e

    new-instance v2, Lcom/estrongs/android/pop/c/f;

    const-string v3, "404 Not Found"

    const-string v4, "text/plain"

    const-string v5, "Not Found"

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/estrongs/android/pop/c/f;-><init>(Lcom/estrongs/android/pop/c/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1d
    return-object v2

    :cond_1e
    new-instance v2, Ljcifs/smb/bg;

    const-string v4, "r"

    invoke-direct {v2, v3, v4}, Ljcifs/smb/bg;-><init>(Ljcifs/smb/ba;Ljava/lang/String;)V

    const-wide/16 v4, 0x0

    cmp-long v4, p2, v4

    if-eqz v4, :cond_2f

    move-wide v0, p2

    invoke-virtual {v2, v0, v1}, Ljcifs/smb/bg;->a(J)V

    :cond_2f
    new-instance v4, Lcom/estrongs/android/pop/c/b;

    move-wide/from16 v0, p4

    invoke-direct {v4, v2, v0, v1}, Lcom/estrongs/android/pop/c/b;-><init>(Ljcifs/smb/bg;J)V

    const-wide/16 v5, 0x0

    cmp-long v2, p2, v5

    if-nez v2, :cond_a8

    new-instance v2, Lcom/estrongs/android/pop/c/f;

    const-string v5, "200 OK"

    const-string v6, "application/octet-stream"

    invoke-direct {v2, p0, v5, v6, v4}, Lcom/estrongs/android/pop/c/f;-><init>(Lcom/estrongs/android/pop/c/c;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    :goto_45
    invoke-virtual {v3}, Ljcifs/smb/ba;->F()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v5, p4, v5

    if-nez v5, :cond_51

    sub-long p4, v3, p2

    :cond_51
    const-string v5, "Content-Length"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v0, p4

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lcom/estrongs/android/pop/c/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "Content-Range"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "bytes "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide v0, p2

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-long v7, p2, p4

    const-wide/16 v9, 0x1

    sub-long/2addr v7, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Lcom/estrongs/android/pop/c/f;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_93
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_93} :catch_94

    goto :goto_1d

    :catch_94
    move-exception v2

    move-object v3, v2

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v2, Lcom/estrongs/android/pop/c/f;

    const-string v4, "500 Internal Server Error"

    const-string v5, "text/plain"

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v4, v5, v3}, Lcom/estrongs/android/pop/c/f;-><init>(Lcom/estrongs/android/pop/c/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1d

    :cond_a8
    :try_start_a8
    new-instance v2, Lcom/estrongs/android/pop/c/f;

    const-string v5, "206 Partial Content"

    const-string v6, "application/octet-stream"

    invoke-direct {v2, p0, v5, v6, v4}, Lcom/estrongs/android/pop/c/f;-><init>(Lcom/estrongs/android/pop/c/c;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_b1
    .catch Ljava/lang/Exception; {:try_start_a8 .. :try_end_b1} :catch_94

    goto :goto_45

    :cond_b2
    const/4 v2, 0x2

    if-eq v6, v2, :cond_c0

    const/4 v2, 0x5

    if-eq v6, v2, :cond_c0

    const/16 v2, 0xd

    if-eq v6, v2, :cond_c0

    const/16 v2, 0xc

    if-ne v6, v2, :cond_175

    :cond_c0
    const/4 v2, 0x2

    if-eq v6, v2, :cond_c7

    const/16 v2, 0xd

    if-ne v6, v2, :cond_147

    :cond_c7
    :try_start_c7
    invoke-static {p1}, Lcom/estrongs/android/pop/fs/FtpFileSystem;->d(Ljava/lang/String;)J

    move-result-wide v2

    move-wide v4, v2

    :goto_cc
    const/4 v2, 0x2

    if-eq v6, v2, :cond_d3

    const/16 v2, 0xd

    if-ne v6, v2, :cond_159

    :cond_d3
    invoke-static/range {p1 .. p3}, Lcom/estrongs/android/pop/fs/FtpFileSystem;->a(Ljava/lang/String;J)Ljava/io/InputStream;

    move-result-object v2

    move-object v3, v2

    :goto_d8
    const-wide/16 v6, 0x0

    cmp-long v2, p2, v6

    if-nez v2, :cond_16a

    new-instance v2, Lcom/estrongs/android/pop/c/f;

    const-string v6, "200 OK"

    const-string v7, "application/octet-stream"

    invoke-direct {v2, p0, v6, v7, v3}, Lcom/estrongs/android/pop/c/f;-><init>(Lcom/estrongs/android/pop/c/c;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    :goto_e7
    const-wide/16 v6, 0x0

    cmp-long v3, p4, v6

    if-nez v3, :cond_ef

    sub-long p4, v4, p2

    :cond_ef
    const-string v3, "Content-Length"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v0, p4

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Lcom/estrongs/android/pop/c/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "Content-Range"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "bytes "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide v0, p2

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-long v7, p2, p4

    const-wide/16 v9, 0x1

    sub-long/2addr v7, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/estrongs/android/pop/c/f;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_131
    .catch Ljava/lang/Exception; {:try_start_c7 .. :try_end_131} :catch_133

    goto/16 :goto_1d

    :catch_133
    move-exception v2

    move-object v3, v2

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v2, Lcom/estrongs/android/pop/c/f;

    const-string v4, "500 Internal Server Error"

    const-string v5, "text/plain"

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v4, v5, v3}, Lcom/estrongs/android/pop/c/f;-><init>(Lcom/estrongs/android/pop/c/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1d

    :cond_147
    const/16 v2, 0xc

    if-eq v6, v2, :cond_152

    :try_start_14b
    invoke-static {p1}, Lcom/estrongs/android/pop/fs/SFtpFileSystem;->b(Ljava/lang/String;)J

    move-result-wide v2

    move-wide v4, v2

    goto/16 :goto_cc

    :cond_152
    invoke-static {p1}, Lcom/estrongs/android/pop/fs/m;->b(Ljava/lang/String;)J

    move-result-wide v2

    move-wide v4, v2

    goto/16 :goto_cc

    :cond_159
    const/4 v2, 0x5

    if-ne v6, v2, :cond_163

    invoke-static/range {p1 .. p3}, Lcom/estrongs/android/pop/fs/SFtpFileSystem;->a(Ljava/lang/String;J)Ljava/io/InputStream;

    move-result-object v2

    move-object v3, v2

    goto/16 :goto_d8

    :cond_163
    invoke-static/range {p1 .. p3}, Lcom/estrongs/android/pop/fs/m;->a(Ljava/lang/String;J)Ljava/io/InputStream;

    move-result-object v2

    move-object v3, v2

    goto/16 :goto_d8

    :cond_16a
    new-instance v2, Lcom/estrongs/android/pop/c/f;

    const-string v6, "206 Partial Content"

    const-string v7, "application/octet-stream"

    invoke-direct {v2, p0, v6, v7, v3}, Lcom/estrongs/android/pop/c/f;-><init>(Lcom/estrongs/android/pop/c/c;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_173
    .catch Ljava/lang/Exception; {:try_start_14b .. :try_end_173} :catch_133

    goto/16 :goto_e7

    :cond_175
    const/4 v2, 0x4

    if-ne v6, v2, :cond_212

    :try_start_178
    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->A(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1fc

    invoke-static {p1}, Lcom/estrongs/android/pop/fs/d;->d(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/estrongs/android/pop/fs/d;->a(Ljava/lang/String;Ljava/lang/Long;)Ljava/io/InputStream;

    move-result-object v2

    move-wide v11, v3

    move-wide v4, v11

    move-object v3, v2

    :goto_18d
    const-wide/16 v6, 0x0

    cmp-long v2, p2, v6

    if-nez v2, :cond_208

    new-instance v2, Lcom/estrongs/android/pop/c/f;

    const-string v6, "200 OK"

    const-string v7, "application/octet-stream"

    invoke-direct {v2, p0, v6, v7, v3}, Lcom/estrongs/android/pop/c/f;-><init>(Lcom/estrongs/android/pop/c/c;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    :goto_19c
    const-wide/16 v6, 0x0

    cmp-long v3, p4, v6

    if-nez v3, :cond_1a4

    sub-long p4, v4, p2

    :cond_1a4
    const-string v3, "Content-Length"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v0, p4

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Lcom/estrongs/android/pop/c/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "Content-Range"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "bytes "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide v0, p2

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-long v7, p2, p4

    const-wide/16 v9, 0x1

    sub-long/2addr v7, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/estrongs/android/pop/c/f;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1e6
    .catch Ljava/lang/Exception; {:try_start_178 .. :try_end_1e6} :catch_1e8

    goto/16 :goto_1d

    :catch_1e8
    move-exception v2

    move-object v3, v2

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v2, Lcom/estrongs/android/pop/c/f;

    const-string v4, "500 Internal Server Error"

    const-string v5, "text/plain"

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v4, v5, v3}, Lcom/estrongs/android/pop/c/f;-><init>(Lcom/estrongs/android/pop/c/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1d

    :cond_1fc
    :try_start_1fc
    invoke-static {p1}, Lcom/estrongs/android/pop/fs/g;->f(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static/range {p1 .. p3}, Lcom/estrongs/android/pop/fs/g;->b(Ljava/lang/String;J)Ljava/io/InputStream;

    move-result-object v2

    move-wide v11, v3

    move-wide v4, v11

    move-object v3, v2

    goto :goto_18d

    :cond_208
    new-instance v2, Lcom/estrongs/android/pop/c/f;

    const-string v6, "206 Partial Content"

    const-string v7, "application/octet-stream"

    invoke-direct {v2, p0, v6, v7, v3}, Lcom/estrongs/android/pop/c/f;-><init>(Lcom/estrongs/android/pop/c/c;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_211
    .catch Ljava/lang/Exception; {:try_start_1fc .. :try_end_211} :catch_1e8

    goto :goto_19c

    :cond_212
    new-instance v2, Lcom/estrongs/android/pop/c/f;

    const-string v3, "400 Bad Request"

    const-string v4, "text/plain"

    const-string v5, "Not Supported"

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/estrongs/android/pop/c/f;-><init>(Lcom/estrongs/android/pop/c/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1d
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Properties;Ljava/util/Properties;Ljava/util/Properties;)Lcom/estrongs/android/pop/c/f;
    .registers 12

    const-wide/16 v4, 0x0

    const/4 v0, 0x0

    const-string v1, "/estrongs_filemgr_oauth_result"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-static {}, Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;->b()Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;

    move-result-object v1

    if-eqz v1, :cond_14

    invoke-virtual {v1, p4}, Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;->a(Ljava/util/Properties;)V

    :cond_14
    :goto_14
    return-object v0

    :cond_15
    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->R(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_14

    const-string v0, "range"

    invoke-virtual {p3, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4f

    const-string v2, "bytes="

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4f

    const-string v2, "bytes="

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x2d

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-lez v2, :cond_42

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_42
    :try_start_42
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_45
    .catch Ljava/lang/NumberFormatException; {:try_start_42 .. :try_end_45} :catch_4c

    move-result-wide v2

    :goto_46
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/estrongs/android/pop/c/a;->a(Ljava/lang/String;JJ)Lcom/estrongs/android/pop/c/f;

    move-result-object v0

    goto :goto_14

    :catch_4c
    move-exception v0

    move-wide v2, v4

    goto :goto_46

    :cond_4f
    move-wide v2, v4

    goto :goto_46
.end method

.method public a()Z
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/c/a;->b:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    return v0
.end method
