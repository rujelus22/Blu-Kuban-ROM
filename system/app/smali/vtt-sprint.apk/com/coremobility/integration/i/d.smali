.class public final Lcom/coremobility/integration/i/d;
.super Ljava/io/DataInputStream;


# instance fields
.field private a:I

.field private b:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/DataInputStream;)V
    .registers 3

    invoke-direct {p0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    const/16 v0, 0x2000

    iput v0, p0, Lcom/coremobility/integration/i/d;->a:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coremobility/integration/i/d;->b:Ljava/io/InputStream;

    iput-object p1, p0, Lcom/coremobility/integration/i/d;->b:Ljava/io/InputStream;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 8

    const/4 v2, 0x0

    const-string v3, ""

    :try_start_3
    iget v0, p0, Lcom/coremobility/integration/i/d;->a:I

    new-array v0, v0, [B
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_4f

    :try_start_7
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_47
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_c} :catch_5e

    :goto_c
    :try_start_c
    iget-object v4, p0, Lcom/coremobility/integration/i/d;->b:Ljava/io/InputStream;

    const/4 v5, 0x0

    iget v6, p0, Lcom/coremobility/integration/i/d;->a:I

    invoke-virtual {v4, v0, v5, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    if-lez v4, :cond_2f

    const/4 v5, 0x0

    invoke-virtual {v1, v0, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1b
    .catchall {:try_start_c .. :try_end_1b} :catchall_5c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_1b} :catch_1c

    goto :goto_c

    :catch_1c
    move-exception v0

    move-object v0, v3

    :goto_1e
    if-eqz v1, :cond_23

    :try_start_20
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_4f

    :cond_23
    :goto_23
    iget-object v1, p0, Lcom/coremobility/integration/i/d;->b:Ljava/io/InputStream;

    if-eqz v1, :cond_2e

    iget-object v1, p0, Lcom/coremobility/integration/i/d;->b:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    iput-object v2, p0, Lcom/coremobility/integration/i/d;->b:Ljava/io/InputStream;

    :cond_2e
    return-object v0

    :cond_2f
    :try_start_2f
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>([B)V
    :try_end_38
    .catchall {:try_start_2f .. :try_end_38} :catchall_5c
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_38} :catch_1c

    :try_start_38
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_5c
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_3b} :catch_62

    :try_start_3b
    iget-object v1, p0, Lcom/coremobility/integration/i/d;->b:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/coremobility/integration/i/d;->b:Ljava/io/InputStream;
    :try_end_43
    .catchall {:try_start_3b .. :try_end_43} :catchall_47
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_43} :catch_44

    goto :goto_23

    :catch_44
    move-exception v1

    move-object v1, v2

    goto :goto_1e

    :catchall_47
    move-exception v0

    move-object v1, v2

    :goto_49
    if-eqz v1, :cond_4e

    :try_start_4b
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    :cond_4e
    throw v0
    :try_end_4f
    .catchall {:try_start_4b .. :try_end_4f} :catchall_4f

    :catchall_4f
    move-exception v0

    iget-object v1, p0, Lcom/coremobility/integration/i/d;->b:Ljava/io/InputStream;

    if-eqz v1, :cond_5b

    iget-object v1, p0, Lcom/coremobility/integration/i/d;->b:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    iput-object v2, p0, Lcom/coremobility/integration/i/d;->b:Ljava/io/InputStream;

    :cond_5b
    throw v0

    :catchall_5c
    move-exception v0

    goto :goto_49

    :catch_5e
    move-exception v0

    move-object v1, v2

    move-object v0, v3

    goto :goto_1e

    :catch_62
    move-exception v3

    goto :goto_1e
.end method

.method public final a(Ljava/lang/String;Lcom/coremobility/integration/i/a;)Z
    .registers 12

    const/4 v8, -0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x1

    :try_start_4
    iget v2, p0, Lcom/coremobility/integration/i/d;->a:I

    new-array v5, v2, [B

    invoke-static {p1}, Lcom/coremobility/integration/file/b;->a(Ljava/lang/String;)Ljava/io/FileOutputStream;
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_5c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_b} :catch_71

    move-result-object v2

    move v4, v1

    :cond_d
    :try_start_d
    invoke-virtual {p2}, Lcom/coremobility/integration/i/a;->a()Z

    move-result v6

    if-eqz v6, :cond_31

    move v0, v1

    :cond_14
    :goto_14
    if-eq v4, v8, :cond_18

    if-nez v0, :cond_d

    :cond_18
    iget-object v4, p0, Lcom/coremobility/integration/i/d;->b:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/coremobility/integration/i/d;->b:Ljava/io/InputStream;
    :try_end_20
    .catchall {:try_start_d .. :try_end_20} :catchall_46
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_20} :catch_43

    :goto_20
    iget-object v1, p0, Lcom/coremobility/integration/i/d;->b:Ljava/io/InputStream;

    if-eqz v1, :cond_2b

    iget-object v1, p0, Lcom/coremobility/integration/i/d;->b:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    iput-object v3, p0, Lcom/coremobility/integration/i/d;->b:Ljava/io/InputStream;

    :cond_2b
    if-eqz v2, :cond_30

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    :cond_30
    :goto_30
    return v0

    :cond_31
    :try_start_31
    iget-object v4, p0, Lcom/coremobility/integration/i/d;->b:Ljava/io/InputStream;

    const/4 v6, 0x0

    iget v7, p0, Lcom/coremobility/integration/i/d;->a:I

    invoke-virtual {v4, v5, v6, v7}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    if-eq v4, v8, :cond_14

    if-eqz v4, :cond_14

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6, v4}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_42
    .catchall {:try_start_31 .. :try_end_42} :catchall_46
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_42} :catch_43

    goto :goto_14

    :catch_43
    move-exception v0

    move v0, v1

    goto :goto_20

    :catchall_46
    move-exception v0

    :try_start_47
    throw v0
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_6f
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_48} :catch_48

    :catch_48
    move-exception v0

    move-object v0, v2

    :goto_4a
    iget-object v2, p0, Lcom/coremobility/integration/i/d;->b:Ljava/io/InputStream;

    if-eqz v2, :cond_55

    iget-object v2, p0, Lcom/coremobility/integration/i/d;->b:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    iput-object v3, p0, Lcom/coremobility/integration/i/d;->b:Ljava/io/InputStream;

    :cond_55
    if-eqz v0, :cond_74

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    move v0, v1

    goto :goto_30

    :catchall_5c
    move-exception v0

    move-object v2, v3

    :goto_5e
    iget-object v1, p0, Lcom/coremobility/integration/i/d;->b:Ljava/io/InputStream;

    if-eqz v1, :cond_69

    iget-object v1, p0, Lcom/coremobility/integration/i/d;->b:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    iput-object v3, p0, Lcom/coremobility/integration/i/d;->b:Ljava/io/InputStream;

    :cond_69
    if-eqz v2, :cond_6e

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    :cond_6e
    throw v0

    :catchall_6f
    move-exception v0

    goto :goto_5e

    :catch_71
    move-exception v0

    move-object v0, v3

    goto :goto_4a

    :cond_74
    move v0, v1

    goto :goto_30
.end method
