.class Lcom/jcraft/jsch/UserAuthKeyboardInteractive;
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

    invoke-super {p0, p1}, Lcom/jcraft/jsch/UserAuth;->a(Lcom/jcraft/jsch/Session;)Z

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->a:Lcom/jcraft/jsch/UserInfo;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->a:Lcom/jcraft/jsch/UserInfo;

    instance-of v0, v0, Lcom/jcraft/jsch/UIKeyboardInteractive;

    if-nez v0, :cond_f

    const/4 v0, 0x0

    :goto_e
    return v0

    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/jcraft/jsch/Session;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v0, p1, Lcom/jcraft/jsch/Session;->l:I

    const/16 v2, 0x16

    if-eq v0, v2, :cond_49

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/jcraft/jsch/Session;->l:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_49
    iget-object v2, p1, Lcom/jcraft/jsch/Session;->n:[B

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->d:Ljava/lang/String;

    invoke-static {v3}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;)[B

    move-result-object v10

    :goto_52
    iget-object v3, p0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->b:Lcom/jcraft/jsch/Packet;

    invoke-virtual {v3}, Lcom/jcraft/jsch/Packet;->a()V

    iget-object v3, p0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->c:Lcom/jcraft/jsch/Buffer;

    const/16 v4, 0x32

    invoke-virtual {v3, v4}, Lcom/jcraft/jsch/Buffer;->a(B)V

    iget-object v3, p0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v3, v10}, Lcom/jcraft/jsch/Buffer;->b([B)V

    iget-object v3, p0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->c:Lcom/jcraft/jsch/Buffer;

    const-string v4, "ssh-connection"

    invoke-static {v4}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/jcraft/jsch/Buffer;->b([B)V

    iget-object v3, p0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->c:Lcom/jcraft/jsch/Buffer;

    const-string v4, "keyboard-interactive"

    invoke-static {v4}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/jcraft/jsch/Buffer;->b([B)V

    iget-object v3, p0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->c:Lcom/jcraft/jsch/Buffer;

    sget-object v4, Lcom/jcraft/jsch/Util;->a:[B

    invoke-virtual {v3, v4}, Lcom/jcraft/jsch/Buffer;->b([B)V

    iget-object v3, p0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->c:Lcom/jcraft/jsch/Buffer;

    sget-object v4, Lcom/jcraft/jsch/Util;->a:[B

    invoke-virtual {v3, v4}, Lcom/jcraft/jsch/Buffer;->b([B)V

    iget-object v3, p0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->b:Lcom/jcraft/jsch/Packet;

    invoke-virtual {p1, v3}, Lcom/jcraft/jsch/Session;->b(Lcom/jcraft/jsch/Packet;)V

    const/4 v3, 0x1

    move v7, v0

    move-object v8, v2

    move v0, v3

    :cond_90
    :goto_90
    iget-object v2, p0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p1, v2}, Lcom/jcraft/jsch/Session;->a(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/Buffer;

    move-result-object v2

    iput-object v2, p0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->c:Lcom/jcraft/jsch/Buffer;

    iget-object v2, p0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->m()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0x34

    if-ne v2, v3, :cond_a7

    const/4 v0, 0x1

    goto/16 :goto_e

    :cond_a7
    const/16 v3, 0x35

    if-ne v2, v3, :cond_d3

    iget-object v2, p0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->c()I

    iget-object v2, p0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->f()I

    iget-object v2, p0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->f()I

    iget-object v2, p0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->i()[B

    move-result-object v2

    iget-object v3, p0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v3}, Lcom/jcraft/jsch/Buffer;->i()[B

    invoke-static {v2}, Lcom/jcraft/jsch/Util;->b([B)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->a:Lcom/jcraft/jsch/UserInfo;

    if-eqz v3, :cond_90

    iget-object v3, p0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->a:Lcom/jcraft/jsch/UserInfo;

    invoke-interface {v3, v2}, Lcom/jcraft/jsch/UserInfo;->d(Ljava/lang/String;)V

    goto :goto_90

    :cond_d3
    const/16 v3, 0x33

    if-ne v2, v3, :cond_103

    iget-object v2, p0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->c()I

    iget-object v2, p0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->f()I

    iget-object v2, p0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->f()I

    iget-object v2, p0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->i()[B

    move-result-object v2

    iget-object v3, p0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v3}, Lcom/jcraft/jsch/Buffer;->f()I

    move-result v3

    if-eqz v3, :cond_fe

    new-instance v0, Lcom/jcraft/jsch/JSchPartialAuthException;

    invoke-static {v2}, Lcom/jcraft/jsch/Util;->b([B)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchPartialAuthException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_fe
    if-eqz v0, :cond_1ff

    const/4 v0, 0x0

    goto/16 :goto_e

    :cond_103
    const/16 v0, 0x3c

    if-ne v2, v0, :cond_1fc

    const/4 v9, 0x0

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->c()I

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->f()I

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->f()I

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->i()[B

    move-result-object v0

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->b([B)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->i()[B

    move-result-object v0

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->b([B)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->i()[B

    move-result-object v0

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->b([B)Ljava/lang/String;

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->c()I

    move-result v11

    new-array v4, v11, [Ljava/lang/String;

    new-array v5, v11, [Z

    const/4 v0, 0x0

    move v6, v0

    :goto_140
    if-ge v6, v11, :cond_15f

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->i()[B

    move-result-object v0

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->b([B)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v6

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->f()I

    move-result v0

    if-eqz v0, :cond_15d

    const/4 v0, 0x1

    :goto_157
    aput-boolean v0, v5, v6

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_140

    :cond_15d
    const/4 v0, 0x0

    goto :goto_157

    :cond_15f
    const/4 v0, 0x0

    move-object v6, v0

    check-cast v6, [[B

    if-eqz v8, :cond_1ab

    array-length v0, v4

    const/4 v12, 0x1

    if-ne v0, v12, :cond_1ab

    const/4 v0, 0x0

    aget-boolean v0, v5, v0

    if-nez v0, :cond_1ab

    const/4 v0, 0x0

    aget-object v0, v4, v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v12, "password:"

    invoke-virtual {v0, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1ab

    const/4 v0, 0x1

    new-array v6, v0, [[B

    const/4 v0, 0x0

    aput-object v8, v6, v0

    const/4 v8, 0x0

    :cond_184
    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->b:Lcom/jcraft/jsch/Packet;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Packet;->a()V

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->c:Lcom/jcraft/jsch/Buffer;

    const/16 v2, 0x3d

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->a(B)V

    if-lez v11, :cond_1ea

    if-eqz v6, :cond_197

    array-length v0, v6

    if-eq v11, v0, :cond_1ea

    :cond_197
    if-nez v6, :cond_1d9

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0, v11}, Lcom/jcraft/jsch/Buffer;->a(I)V

    const/4 v0, 0x0

    :goto_19f
    if-ge v0, v11, :cond_1df

    iget-object v2, p0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->c:Lcom/jcraft/jsch/Buffer;

    sget-object v3, Lcom/jcraft/jsch/Util;->a:[B

    invoke-virtual {v2, v3}, Lcom/jcraft/jsch/Buffer;->b([B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_19f

    :cond_1ab
    if-gtz v11, :cond_1b9

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1b9

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_184

    :cond_1b9
    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->a:Lcom/jcraft/jsch/UserInfo;

    if-eqz v0, :cond_184

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->a:Lcom/jcraft/jsch/UserInfo;

    check-cast v0, Lcom/jcraft/jsch/UIKeyboardInteractive;

    invoke-interface/range {v0 .. v5}, Lcom/jcraft/jsch/UIKeyboardInteractive;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Z)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_184

    array-length v0, v2

    new-array v6, v0, [[B

    const/4 v0, 0x0

    :goto_1cb
    array-length v3, v2

    if-ge v0, v3, :cond_184

    aget-object v3, v2, v0

    invoke-static {v3}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;)[B

    move-result-object v3

    aput-object v3, v6, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1cb

    :cond_1d9
    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->c:Lcom/jcraft/jsch/Buffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->a(I)V

    :cond_1df
    if-nez v6, :cond_1e2

    const/4 v7, 0x1

    :cond_1e2
    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->b:Lcom/jcraft/jsch/Packet;

    invoke-virtual {p1, v0}, Lcom/jcraft/jsch/Session;->b(Lcom/jcraft/jsch/Packet;)V

    move v0, v9

    goto/16 :goto_90

    :cond_1ea
    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0, v11}, Lcom/jcraft/jsch/Buffer;->a(I)V

    const/4 v0, 0x0

    :goto_1f0
    if-ge v0, v11, :cond_1e2

    iget-object v2, p0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->c:Lcom/jcraft/jsch/Buffer;

    aget-object v3, v6, v0

    invoke-virtual {v2, v3}, Lcom/jcraft/jsch/Buffer;->b([B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1f0

    :cond_1fc
    const/4 v0, 0x0

    goto/16 :goto_e

    :cond_1ff
    if-eqz v7, :cond_209

    new-instance v0, Lcom/jcraft/jsch/JSchAuthCancelException;

    const-string v1, "keyboard-interactive"

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchAuthCancelException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_209
    move v0, v7

    move-object v2, v8

    goto/16 :goto_52
.end method
