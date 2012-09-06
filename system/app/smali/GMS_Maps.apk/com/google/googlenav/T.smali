.class public abstract Lcom/google/googlenav/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lac/q;
.implements Lcom/google/googlenav/aR;


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private d:[B

.field private final e:Lcom/google/googlenav/common/io/j;

.field private f:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/t;->a:Ljava/lang/Object;

    .line 50
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->m()Lcom/google/googlenav/common/io/j;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/t;->e:Lcom/google/googlenav/common/io/j;

    .line 63
    iput-object p1, p0, Lcom/google/googlenav/t;->c:Ljava/lang/String;

    .line 64
    iput-object p2, p0, Lcom/google/googlenav/t;->b:Ljava/lang/String;

    .line 65
    return-void
.end method

.method private a([B)V
    .registers 6
    .parameter

    .prologue
    .line 122
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 123
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 125
    :try_start_a
    iget-object v2, p0, Lcom/google/googlenav/t;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 126
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 127
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_16} :catch_53

    .line 132
    iget-object v1, p0, Lcom/google/googlenav/t;->e:Lcom/google/googlenav/common/io/j;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteStringsVersionPref_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/googlenav/t;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/google/googlenav/common/io/j;->a(Ljava/lang/String;[B)Z

    .line 134
    iget-object v0, p0, Lcom/google/googlenav/t;->e:Lcom/google/googlenav/common/io/j;

    invoke-interface {v0}, Lcom/google/googlenav/common/io/j;->a()V

    .line 135
    iget-object v0, p0, Lcom/google/googlenav/t;->e:Lcom/google/googlenav/common/io/j;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteStringsBlock_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/t;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/google/googlenav/common/io/j;->b([BLjava/lang/String;)I

    move-result v0

    .line 137
    if-gtz v0, :cond_52

    .line 142
    :cond_52
    return-void

    .line 128
    :catch_53
    move-exception v0

    .line 129
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/google/googlenav/t;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private d()[B
    .registers 4

    .prologue
    .line 183
    iget-object v0, p0, Lcom/google/googlenav/t;->e:Lcom/google/googlenav/common/io/j;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteStringsBlock_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/t;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/common/io/j;->d(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()V
    .registers 1

    .prologue
    .line 239
    return-void
.end method

.method protected abstract a(I)V
.end method

.method public a(IZLjava/lang/String;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 224
    const/4 v0, 0x3

    if-ne p1, v0, :cond_c

    if-eqz p2, :cond_c

    const/4 v0, 0x1

    .line 226
    :goto_6
    if-nez v0, :cond_b

    .line 227
    invoke-virtual {p0, p1}, Lcom/google/googlenav/t;->a(I)V

    .line 229
    :cond_b
    return-void

    .line 224
    :cond_c
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public a(Lac/g;)V
    .registers 2
    .parameter

    .prologue
    .line 209
    return-void
.end method

.method public a(Ljava/lang/String;[B)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 194
    if-eqz p2, :cond_e

    .line 195
    iput-object p2, p0, Lcom/google/googlenav/t;->d:[B

    .line 201
    :goto_4
    iget-object v1, p0, Lcom/google/googlenav/t;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 202
    :try_start_7
    iget-object v0, p0, Lcom/google/googlenav/t;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 203
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_13

    .line 204
    return-void

    .line 198
    :cond_e
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/google/googlenav/t;->a(I)V

    goto :goto_4

    .line 203
    :catchall_13
    move-exception v0

    :try_start_14
    monitor-exit v1
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    throw v0
.end method

.method public a(Z)[Ljava/lang/String;
    .registers 6
    .parameter

    .prologue
    .line 73
    if-nez p1, :cond_8

    .line 74
    invoke-direct {p0}, Lcom/google/googlenav/t;->d()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/t;->d:[B

    .line 76
    :cond_8
    iget-object v0, p0, Lcom/google/googlenav/t;->d:[B

    if-eqz v0, :cond_e

    if-eqz p1, :cond_41

    .line 77
    :cond_e
    invoke-static {}, Lac/h;->a()Lac/h;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/aP;

    iget-object v2, p0, Lcom/google/googlenav/t;->b:Ljava/lang/String;

    invoke-direct {v1, v2, p0}, Lcom/google/googlenav/aP;-><init>(Ljava/lang/String;Lcom/google/googlenav/aR;)V

    invoke-virtual {v0, v1}, Lac/h;->c(Lac/g;)V

    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/t;->f:Z

    .line 85
    iget-object v1, p0, Lcom/google/googlenav/t;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 86
    :goto_22
    :try_start_22
    iget-object v0, p0, Lcom/google/googlenav/t;->d:[B

    if-nez v0, :cond_32

    iget-boolean v0, p0, Lcom/google/googlenav/t;->f:Z
    :try_end_28
    .catchall {:try_start_22 .. :try_end_28} :catchall_39

    if-nez v0, :cond_32

    .line 88
    :try_start_2a
    iget-object v0, p0, Lcom/google/googlenav/t;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_2f
    .catchall {:try_start_2a .. :try_end_2f} :catchall_39
    .catch Ljava/lang/InterruptedException; {:try_start_2a .. :try_end_2f} :catch_30

    goto :goto_22

    .line 89
    :catch_30
    move-exception v0

    goto :goto_22

    .line 93
    :cond_32
    :try_start_32
    monitor-exit v1
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_39

    .line 97
    iget-boolean v0, p0, Lcom/google/googlenav/t;->f:Z

    if-eqz v0, :cond_3c

    .line 98
    const/4 v0, 0x0

    .line 112
    :goto_38
    return-object v0

    .line 93
    :catchall_39
    move-exception v0

    :try_start_3a
    monitor-exit v1
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    throw v0

    .line 101
    :cond_3c
    iget-object v0, p0, Lcom/google/googlenav/t;->d:[B

    invoke-direct {p0, v0}, Lcom/google/googlenav/t;->a([B)V

    .line 105
    :cond_41
    iget-object v0, p0, Lcom/google/googlenav/t;->d:[B

    invoke-static {v0}, Lcom/google/googlenav/common/io/i;->a([B)Ljava/io/DataInput;

    move-result-object v0

    .line 107
    :try_start_47
    iget-object v1, p0, Lcom/google/googlenav/t;->c:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/google/googlenav/common/Config;->a(Ljava/lang/String;Ljava/io/DataInput;Z)[Ljava/lang/String;
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_4d} :catch_4f

    move-result-object v0

    goto :goto_38

    .line 108
    :catch_4f
    move-exception v0

    .line 109
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/google/googlenav/t;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public b(Lac/g;)V
    .registers 2
    .parameter

    .prologue
    .line 234
    return-void
.end method

.method public b()Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    .line 149
    iget-object v1, p0, Lcom/google/googlenav/t;->e:Lcom/google/googlenav/common/io/j;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteStringsVersionPref_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/googlenav/t;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/googlenav/common/io/j;->a_(Ljava/lang/String;)[B

    move-result-object v1

    .line 151
    if-nez v1, :cond_1f

    .line 163
    :cond_1e
    :goto_1e
    return v0

    .line 154
    :cond_1f
    new-instance v2, Ljava/io/DataInputStream;

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v2, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 157
    :try_start_29
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v1

    .line 158
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_30} :catch_3a

    .line 163
    iget-object v2, p0, Lcom/google/googlenav/t;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    const/4 v0, 0x0

    goto :goto_1e

    .line 159
    :catch_3a
    move-exception v0

    .line 160
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/google/googlenav/t;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected c()V
    .registers 3

    .prologue
    .line 171
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/t;->f:Z

    .line 172
    iget-object v1, p0, Lcom/google/googlenav/t;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 173
    :try_start_6
    iget-object v0, p0, Lcom/google/googlenav/t;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 174
    monitor-exit v1

    .line 175
    return-void

    .line 174
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v0
.end method
