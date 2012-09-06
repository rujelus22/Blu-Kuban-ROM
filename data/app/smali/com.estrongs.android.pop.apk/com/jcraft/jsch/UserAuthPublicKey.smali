.class Lcom/jcraft/jsch/UserAuthPublicKey;
.super Lcom/jcraft/jsch/UserAuth;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/jcraft/jsch/UserAuth;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/jcraft/jsch/Session;)Z
    .registers 15

    const/4 v7, 0x5

    const/4 v5, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-super {p0, p1}, Lcom/jcraft/jsch/UserAuth;->a(Lcom/jcraft/jsch/Session;)Z

    iget-object v0, p1, Lcom/jcraft/jsch/Session;->o:Lcom/jcraft/jsch/JSch;

    iget-object v9, v0, Lcom/jcraft/jsch/JSch;->c:Ljava/util/Vector;

    monitor-enter v9

    :try_start_c
    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    move-result v0

    if-gtz v0, :cond_15

    monitor-exit v9

    move v0, v1

    :goto_14
    return v0

    :cond_15
    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthPublicKey;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;)[B

    move-result-object v10

    move v8, v1

    :goto_1c
    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v8, v0, :cond_1b0

    invoke-virtual {v9, v8}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jcraft/jsch/Identity;

    check-cast v0, Lcom/jcraft/jsch/Identity;

    invoke-interface {v0}, Lcom/jcraft/jsch/Identity;->a()[B

    move-result-object v3

    if-eqz v3, :cond_c3

    iget-object v4, p0, Lcom/jcraft/jsch/UserAuthPublicKey;->b:Lcom/jcraft/jsch/Packet;

    invoke-virtual {v4}, Lcom/jcraft/jsch/Packet;->a()V

    iget-object v4, p0, Lcom/jcraft/jsch/UserAuthPublicKey;->c:Lcom/jcraft/jsch/Buffer;

    const/16 v6, 0x32

    invoke-virtual {v4, v6}, Lcom/jcraft/jsch/Buffer;->a(B)V

    iget-object v4, p0, Lcom/jcraft/jsch/UserAuthPublicKey;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v4, v10}, Lcom/jcraft/jsch/Buffer;->b([B)V

    iget-object v4, p0, Lcom/jcraft/jsch/UserAuthPublicKey;->c:Lcom/jcraft/jsch/Buffer;

    const-string v6, "ssh-connection"

    invoke-static {v6}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/jcraft/jsch/Buffer;->b([B)V

    iget-object v4, p0, Lcom/jcraft/jsch/UserAuthPublicKey;->c:Lcom/jcraft/jsch/Buffer;

    const-string v6, "publickey"

    invoke-static {v6}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/jcraft/jsch/Buffer;->b([B)V

    iget-object v4, p0, Lcom/jcraft/jsch/UserAuthPublicKey;->c:Lcom/jcraft/jsch/Buffer;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/jcraft/jsch/Buffer;->a(B)V

    iget-object v4, p0, Lcom/jcraft/jsch/UserAuthPublicKey;->c:Lcom/jcraft/jsch/Buffer;

    invoke-interface {v0}, Lcom/jcraft/jsch/Identity;->b()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/jcraft/jsch/Buffer;->b([B)V

    iget-object v4, p0, Lcom/jcraft/jsch/UserAuthPublicKey;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v4, v3}, Lcom/jcraft/jsch/Buffer;->b([B)V

    iget-object v4, p0, Lcom/jcraft/jsch/UserAuthPublicKey;->b:Lcom/jcraft/jsch/Packet;

    invoke-virtual {p1, v4}, Lcom/jcraft/jsch/Session;->b(Lcom/jcraft/jsch/Packet;)V

    :cond_74
    :goto_74
    iget-object v4, p0, Lcom/jcraft/jsch/UserAuthPublicKey;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p1, v4}, Lcom/jcraft/jsch/Session;->a(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/Buffer;

    move-result-object v4

    iput-object v4, p0, Lcom/jcraft/jsch/UserAuthPublicKey;->c:Lcom/jcraft/jsch/Buffer;

    iget-object v4, p0, Lcom/jcraft/jsch/UserAuthPublicKey;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->m()B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    const/16 v6, 0x3c

    if-ne v4, v6, :cond_90

    :cond_88
    const/16 v6, 0x3c

    if-eq v4, v6, :cond_c3

    :cond_8c
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_1c

    :cond_90
    const/16 v6, 0x33

    if-eq v4, v6, :cond_88

    const/16 v6, 0x35

    if-ne v4, v6, :cond_88

    iget-object v4, p0, Lcom/jcraft/jsch/UserAuthPublicKey;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->c()I

    iget-object v4, p0, Lcom/jcraft/jsch/UserAuthPublicKey;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->f()I

    iget-object v4, p0, Lcom/jcraft/jsch/UserAuthPublicKey;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->f()I

    iget-object v4, p0, Lcom/jcraft/jsch/UserAuthPublicKey;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->i()[B

    move-result-object v4

    iget-object v6, p0, Lcom/jcraft/jsch/UserAuthPublicKey;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->i()[B

    invoke-static {v4}, Lcom/jcraft/jsch/Util;->b([B)Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/jcraft/jsch/UserAuthPublicKey;->a:Lcom/jcraft/jsch/UserInfo;

    if-eqz v6, :cond_74

    iget-object v6, p0, Lcom/jcraft/jsch/UserAuthPublicKey;->a:Lcom/jcraft/jsch/UserInfo;

    invoke-interface {v6, v4}, Lcom/jcraft/jsch/UserInfo;->d(Ljava/lang/String;)V

    goto :goto_74

    :catchall_c0
    move-exception v0

    monitor-exit v9
    :try_end_c2
    .catchall {:try_start_c .. :try_end_c2} :catchall_c0

    throw v0

    :cond_c3
    move v6, v7

    :goto_c4
    :try_start_c4
    invoke-interface {v0}, Lcom/jcraft/jsch/Identity;->d()Z

    move-result v4

    if-eqz v4, :cond_23a

    if-nez v5, :cond_23a

    iget-object v4, p0, Lcom/jcraft/jsch/UserAuthPublicKey;->a:Lcom/jcraft/jsch/UserInfo;

    if-nez v4, :cond_d8

    new-instance v0, Lcom/jcraft/jsch/JSchException;

    const-string v1, "USERAUTH fail"

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d8
    invoke-interface {v0}, Lcom/jcraft/jsch/Identity;->d()Z

    move-result v4

    if-eqz v4, :cond_105

    iget-object v4, p0, Lcom/jcraft/jsch/UserAuthPublicKey;->a:Lcom/jcraft/jsch/UserInfo;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Passphrase for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v0}, Lcom/jcraft/jsch/Identity;->c()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v4, v11}, Lcom/jcraft/jsch/UserInfo;->b(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_105

    new-instance v0, Lcom/jcraft/jsch/JSchAuthCancelException;

    const-string v1, "publickey"

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchAuthCancelException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_105
    iget-object v4, p0, Lcom/jcraft/jsch/UserAuthPublicKey;->a:Lcom/jcraft/jsch/UserInfo;

    invoke-interface {v4}, Lcom/jcraft/jsch/UserInfo;->b()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_23a

    invoke-static {v4}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;)[B

    move-result-object v4

    :goto_111
    invoke-interface {v0}, Lcom/jcraft/jsch/Identity;->d()Z

    move-result v11

    if-eqz v11, :cond_119

    if-eqz v4, :cond_1b4

    :cond_119
    invoke-interface {v0, v4}, Lcom/jcraft/jsch/Identity;->a([B)Z

    move-result v11

    if-eqz v11, :cond_1b4

    :goto_11f
    invoke-static {v4}, Lcom/jcraft/jsch/Util;->c([B)V

    invoke-interface {v0}, Lcom/jcraft/jsch/Identity;->d()Z

    move-result v4

    if-nez v4, :cond_8c

    if-nez v3, :cond_12e

    invoke-interface {v0}, Lcom/jcraft/jsch/Identity;->a()[B

    move-result-object v3

    :cond_12e
    if-eqz v3, :cond_8c

    iget-object v4, p0, Lcom/jcraft/jsch/UserAuthPublicKey;->b:Lcom/jcraft/jsch/Packet;

    invoke-virtual {v4}, Lcom/jcraft/jsch/Packet;->a()V

    iget-object v4, p0, Lcom/jcraft/jsch/UserAuthPublicKey;->c:Lcom/jcraft/jsch/Buffer;

    const/16 v6, 0x32

    invoke-virtual {v4, v6}, Lcom/jcraft/jsch/Buffer;->a(B)V

    iget-object v4, p0, Lcom/jcraft/jsch/UserAuthPublicKey;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v4, v10}, Lcom/jcraft/jsch/Buffer;->b([B)V

    iget-object v4, p0, Lcom/jcraft/jsch/UserAuthPublicKey;->c:Lcom/jcraft/jsch/Buffer;

    const-string v6, "ssh-connection"

    invoke-static {v6}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/jcraft/jsch/Buffer;->b([B)V

    iget-object v4, p0, Lcom/jcraft/jsch/UserAuthPublicKey;->c:Lcom/jcraft/jsch/Buffer;

    const-string v6, "publickey"

    invoke-static {v6}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/jcraft/jsch/Buffer;->b([B)V

    iget-object v4, p0, Lcom/jcraft/jsch/UserAuthPublicKey;->c:Lcom/jcraft/jsch/Buffer;

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lcom/jcraft/jsch/Buffer;->a(B)V

    iget-object v4, p0, Lcom/jcraft/jsch/UserAuthPublicKey;->c:Lcom/jcraft/jsch/Buffer;

    invoke-interface {v0}, Lcom/jcraft/jsch/Identity;->b()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/jcraft/jsch/Buffer;->b([B)V

    iget-object v4, p0, Lcom/jcraft/jsch/UserAuthPublicKey;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v4, v3}, Lcom/jcraft/jsch/Buffer;->b([B)V

    invoke-virtual {p1}, Lcom/jcraft/jsch/Session;->a()[B

    move-result-object v3

    array-length v4, v3

    add-int/lit8 v6, v4, 0x4

    iget-object v11, p0, Lcom/jcraft/jsch/UserAuthPublicKey;->c:Lcom/jcraft/jsch/Buffer;

    iget v11, v11, Lcom/jcraft/jsch/Buffer;->c:I

    add-int/2addr v6, v11

    add-int/lit8 v6, v6, -0x5

    new-array v6, v6, [B

    const/4 v11, 0x0

    ushr-int/lit8 v12, v4, 0x18

    int-to-byte v12, v12

    aput-byte v12, v6, v11

    const/4 v11, 0x1

    ushr-int/lit8 v12, v4, 0x10

    int-to-byte v12, v12

    aput-byte v12, v6, v11

    const/4 v11, 0x2

    ushr-int/lit8 v12, v4, 0x8

    int-to-byte v12, v12

    aput-byte v12, v6, v11

    const/4 v11, 0x3

    int-to-byte v12, v4

    aput-byte v12, v6, v11

    const/4 v11, 0x0

    const/4 v12, 0x4

    invoke-static {v3, v11, v6, v12, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lcom/jcraft/jsch/UserAuthPublicKey;->c:Lcom/jcraft/jsch/Buffer;

    iget-object v3, v3, Lcom/jcraft/jsch/Buffer;->b:[B

    const/4 v11, 0x5

    add-int/lit8 v4, v4, 0x4

    iget-object v12, p0, Lcom/jcraft/jsch/UserAuthPublicKey;->c:Lcom/jcraft/jsch/Buffer;

    iget v12, v12, Lcom/jcraft/jsch/Buffer;->c:I

    add-int/lit8 v12, v12, -0x5

    invoke-static {v3, v11, v6, v4, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-interface {v0, v6}, Lcom/jcraft/jsch/Identity;->b([B)[B

    move-result-object v0

    if-nez v0, :cond_1be

    :cond_1b0
    monitor-exit v9

    move v0, v1

    goto/16 :goto_14

    :cond_1b4
    invoke-static {v4}, Lcom/jcraft/jsch/Util;->c([B)V

    add-int/lit8 v4, v6, -0x1

    if-nez v4, :cond_237

    move-object v4, v5

    goto/16 :goto_11f

    :cond_1be
    iget-object v3, p0, Lcom/jcraft/jsch/UserAuthPublicKey;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v3, v0}, Lcom/jcraft/jsch/Buffer;->b([B)V

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthPublicKey;->b:Lcom/jcraft/jsch/Packet;

    invoke-virtual {p1, v0}, Lcom/jcraft/jsch/Session;->b(Lcom/jcraft/jsch/Packet;)V

    :cond_1c8
    :goto_1c8
    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthPublicKey;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p1, v0}, Lcom/jcraft/jsch/Session;->a(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/Buffer;

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/UserAuthPublicKey;->c:Lcom/jcraft/jsch/Buffer;

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthPublicKey;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->m()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/16 v3, 0x34

    if-ne v0, v3, :cond_1e0

    monitor-exit v9

    move v0, v2

    goto/16 :goto_14

    :cond_1e0
    const/16 v3, 0x35

    if-ne v0, v3, :cond_20c

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthPublicKey;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->c()I

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthPublicKey;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->f()I

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthPublicKey;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->f()I

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthPublicKey;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->i()[B

    move-result-object v0

    iget-object v3, p0, Lcom/jcraft/jsch/UserAuthPublicKey;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v3}, Lcom/jcraft/jsch/Buffer;->i()[B

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->b([B)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/jcraft/jsch/UserAuthPublicKey;->a:Lcom/jcraft/jsch/UserInfo;

    if-eqz v3, :cond_1c8

    iget-object v3, p0, Lcom/jcraft/jsch/UserAuthPublicKey;->a:Lcom/jcraft/jsch/UserInfo;

    invoke-interface {v3, v0}, Lcom/jcraft/jsch/UserInfo;->d(Ljava/lang/String;)V

    goto :goto_1c8

    :cond_20c
    const/16 v3, 0x33

    if-ne v0, v3, :cond_8c

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthPublicKey;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->c()I

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthPublicKey;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->f()I

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthPublicKey;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->f()I

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthPublicKey;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->i()[B

    move-result-object v0

    iget-object v3, p0, Lcom/jcraft/jsch/UserAuthPublicKey;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v3}, Lcom/jcraft/jsch/Buffer;->f()I

    move-result v3

    if-eqz v3, :cond_8c

    new-instance v1, Lcom/jcraft/jsch/JSchPartialAuthException;

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->b([B)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/jcraft/jsch/JSchPartialAuthException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_237
    .catchall {:try_start_c4 .. :try_end_237} :catchall_c0

    :cond_237
    move v6, v4

    goto/16 :goto_c4

    :cond_23a
    move-object v4, v5

    goto/16 :goto_111
.end method
