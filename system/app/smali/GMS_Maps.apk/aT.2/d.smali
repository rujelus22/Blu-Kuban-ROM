.class public final LaT/d;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/String;)J
    .registers 7
    .parameter

    .prologue
    const-wide v2, 0x7fffffffffffffffL

    .line 38
    invoke-static {p0, v2, v3}, Lcom/google/googlenav/common/j;->b(Ljava/lang/String;J)J

    move-result-wide v0

    .line 40
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/googlenav/common/a;->b()J

    move-result-wide v4

    cmp-long v4, v0, v4

    if-gez v4, :cond_1a

    .line 43
    :goto_19
    return-wide v0

    :cond_1a
    move-wide v0, v2

    goto :goto_19
.end method

.method public static a(Ljava/lang/String;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 5
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 62
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/common/Config;->m()Lcom/google/googlenav/common/io/j;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/google/googlenav/common/io/j;->a_(Ljava/lang/String;)[B

    move-result-object v1

    .line 64
    if-eqz v1, :cond_30

    array-length v2, v1

    if-lez v2, :cond_30

    .line 65
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 66
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 68
    :try_start_1c
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    .line 69
    invoke-virtual {p1, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->parse(Ljava/io/InputStream;I)I

    move-result v1

    if-eqz v1, :cond_32

    .line 72
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_2c} :catch_2c

    .line 77
    :catch_2c
    move-exception v1

    .line 81
    invoke-static {p0, v0}, LaT/d;->b(Ljava/lang/String;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    :cond_30
    move-object p1, v0

    .line 84
    :goto_31
    return-object p1

    .line 74
    :cond_32
    if-eqz v2, :cond_30

    goto :goto_31
.end method

.method public static a()V
    .registers 2

    .prologue
    .line 128
    new-instance v0, LaT/e;

    invoke-static {}, Lcom/google/googlenav/bI;->a()LY/c;

    move-result-object v1

    invoke-direct {v0, v1}, LaT/e;-><init>(LY/c;)V

    invoke-virtual {v0}, LaT/e;->g()V

    .line 135
    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 49
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/common/a;->b()J

    move-result-wide v0

    .line 50
    invoke-static {p0, v0, v1}, Lcom/google/googlenav/common/j;->a(Ljava/lang/String;J)V

    .line 51
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->m()Lcom/google/googlenav/common/io/j;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/common/io/j;->a()V

    .line 52
    return-void
.end method

.method public static b(Ljava/lang/String;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 92
    invoke-static {p0, p1}, LaT/d;->c(Ljava/lang/String;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 93
    invoke-static {}, LaT/d;->a()V

    .line 94
    return-void
.end method

.method public static c(Ljava/lang/String;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 99
    const/4 v0, 0x0

    .line 100
    if-eqz p1, :cond_14

    .line 101
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 102
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 104
    :try_start_d
    invoke-virtual {p1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->outputWithSizeTo(Ljava/io/OutputStream;)V

    .line 105
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_13} :catch_20

    move-result-object v0

    .line 112
    :cond_14
    :goto_14
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/common/Config;->m()Lcom/google/googlenav/common/io/j;

    move-result-object v1

    invoke-interface {v1, p0, v0}, Lcom/google/googlenav/common/io/j;->a(Ljava/lang/String;[B)Z

    .line 113
    return-void

    .line 106
    :catch_20
    move-exception v1

    goto :goto_14
.end method
