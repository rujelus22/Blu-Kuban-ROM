.class Lcom/jcraft/jsch/UserAuthPassword;
.super Lcom/jcraft/jsch/UserAuth;


# instance fields
.field private final e:I


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/jcraft/jsch/UserAuth;-><init>()V

    const/16 v0, 0x3c

    iput v0, p0, Lcom/jcraft/jsch/UserAuthPassword;->e:I

    return-void
.end method


# virtual methods
.method public a(Lcom/jcraft/jsch/Session;)Z
    .registers 14

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-super {p0, p1}, Lcom/jcraft/jsch/UserAuth;->a(Lcom/jcraft/jsch/Session;)Z

    iget-object v6, p1, Lcom/jcraft/jsch/Session;->n:[B

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/jcraft/jsch/UserAuthPassword;->d:Ljava/lang/String;

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

    if-eq v0, v2, :cond_41

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

    :cond_41
    :goto_41
    if-nez v6, :cond_8c

    :try_start_43
    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthPassword;->a:Lcom/jcraft/jsch/UserInfo;
    :try_end_45
    .catchall {:try_start_43 .. :try_end_45} :catchall_71

    if-nez v0, :cond_4e

    if-eqz v6, :cond_4c

    invoke-static {v6}, Lcom/jcraft/jsch/Util;->c([B)V

    :cond_4c
    move v0, v7

    :goto_4d
    return v0

    :cond_4e
    :try_start_4e
    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthPassword;->a:Lcom/jcraft/jsch/UserInfo;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Password for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/jcraft/jsch/UserInfo;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_78

    new-instance v0, Lcom/jcraft/jsch/JSchAuthCancelException;

    const-string v1, "password"

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchAuthCancelException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_71
    .catchall {:try_start_4e .. :try_end_71} :catchall_71

    :catchall_71
    move-exception v0

    if-eqz v6, :cond_77

    invoke-static {v6}, Lcom/jcraft/jsch/Util;->c([B)V

    :cond_77
    throw v0

    :cond_78
    :try_start_78
    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthPassword;->a:Lcom/jcraft/jsch/UserInfo;

    invoke-interface {v0}, Lcom/jcraft/jsch/UserInfo;->a()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_88

    new-instance v0, Lcom/jcraft/jsch/JSchAuthCancelException;

    const-string v1, "password"

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchAuthCancelException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_88
    invoke-static {v0}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;)[B

    move-result-object v6

    :cond_8c
    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthPassword;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;)[B

    move-result-object v9

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthPassword;->b:Lcom/jcraft/jsch/Packet;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Packet;->a()V

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthPassword;->c:Lcom/jcraft/jsch/Buffer;

    const/16 v2, 0x32

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->a(B)V

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthPassword;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0, v9}, Lcom/jcraft/jsch/Buffer;->b([B)V

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthPassword;->c:Lcom/jcraft/jsch/Buffer;

    const-string v2, "ssh-connection"

    invoke-static {v2}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->b([B)V

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthPassword;->c:Lcom/jcraft/jsch/Buffer;

    const-string v2, "password"

    invoke-static {v2}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->b([B)V

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthPassword;->c:Lcom/jcraft/jsch/Buffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->a(B)V

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthPassword;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0, v6}, Lcom/jcraft/jsch/Buffer;->b([B)V

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthPassword;->b:Lcom/jcraft/jsch/Packet;

    invoke-virtual {p1, v0}, Lcom/jcraft/jsch/Session;->b(Lcom/jcraft/jsch/Packet;)V

    :cond_c9
    :goto_c9
    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthPassword;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p1, v0}, Lcom/jcraft/jsch/Session;->a(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/Buffer;

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/UserAuthPassword;->c:Lcom/jcraft/jsch/Buffer;

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthPassword;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->m()B
    :try_end_d6
    .catchall {:try_start_78 .. :try_end_d6} :catchall_71

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/16 v2, 0x34

    if-ne v0, v2, :cond_e5

    if-eqz v6, :cond_e2

    invoke-static {v6}, Lcom/jcraft/jsch/Util;->c([B)V

    :cond_e2
    move v0, v8

    goto/16 :goto_4d

    :cond_e5
    const/16 v2, 0x35

    if-ne v0, v2, :cond_111

    :try_start_e9
    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthPassword;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->c()I

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthPassword;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->f()I

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthPassword;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->f()I

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthPassword;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->i()[B

    move-result-object v0

    iget-object v2, p0, Lcom/jcraft/jsch/UserAuthPassword;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->i()[B

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->b([B)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/jcraft/jsch/UserAuthPassword;->a:Lcom/jcraft/jsch/UserInfo;

    if-eqz v2, :cond_c9

    iget-object v2, p0, Lcom/jcraft/jsch/UserAuthPassword;->a:Lcom/jcraft/jsch/UserInfo;

    invoke-interface {v2, v0}, Lcom/jcraft/jsch/UserInfo;->d(Ljava/lang/String;)V

    goto :goto_c9

    :cond_111
    const/16 v2, 0x3c

    if-ne v0, v2, :cond_1bb

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthPassword;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->c()I

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthPassword;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->f()I

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthPassword;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->f()I

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthPassword;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->i()[B

    move-result-object v3

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthPassword;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->i()[B

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthPassword;->a:Lcom/jcraft/jsch/UserInfo;

    if-eqz v0, :cond_139

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthPassword;->a:Lcom/jcraft/jsch/UserInfo;

    instance-of v0, v0, Lcom/jcraft/jsch/UIKeyboardInteractive;

    if-nez v0, :cond_14c

    :cond_139
    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthPassword;->a:Lcom/jcraft/jsch/UserInfo;

    if-eqz v0, :cond_144

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthPassword;->a:Lcom/jcraft/jsch/UserInfo;

    const-string v1, "Password must be changed."

    invoke-interface {v0, v1}, Lcom/jcraft/jsch/UserInfo;->d(Ljava/lang/String;)V
    :try_end_144
    .catchall {:try_start_e9 .. :try_end_144} :catchall_71

    :cond_144
    if-eqz v6, :cond_149

    invoke-static {v6}, Lcom/jcraft/jsch/Util;->c([B)V

    :cond_149
    move v0, v7

    goto/16 :goto_4d

    :cond_14c
    :try_start_14c
    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthPassword;->a:Lcom/jcraft/jsch/UserInfo;

    check-cast v0, Lcom/jcraft/jsch/UIKeyboardInteractive;

    const-string v2, "Password Change Required"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v10, "New Password: "

    aput-object v10, v4, v5

    const/4 v5, 0x1

    new-array v5, v5, [Z

    const/4 v10, 0x0

    const/4 v11, 0x0

    aput-boolean v11, v5, v10

    invoke-static {v3}, Lcom/jcraft/jsch/Util;->b([B)Ljava/lang/String;

    move-result-object v3

    invoke-interface/range {v0 .. v5}, Lcom/jcraft/jsch/UIKeyboardInteractive;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Z)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_173

    new-instance v0, Lcom/jcraft/jsch/JSchAuthCancelException;

    const-string v1, "password"

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchAuthCancelException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_173
    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;)[B

    move-result-object v0

    iget-object v2, p0, Lcom/jcraft/jsch/UserAuthPassword;->b:Lcom/jcraft/jsch/Packet;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Packet;->a()V

    iget-object v2, p0, Lcom/jcraft/jsch/UserAuthPassword;->c:Lcom/jcraft/jsch/Buffer;

    const/16 v3, 0x32

    invoke-virtual {v2, v3}, Lcom/jcraft/jsch/Buffer;->a(B)V

    iget-object v2, p0, Lcom/jcraft/jsch/UserAuthPassword;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v2, v9}, Lcom/jcraft/jsch/Buffer;->b([B)V

    iget-object v2, p0, Lcom/jcraft/jsch/UserAuthPassword;->c:Lcom/jcraft/jsch/Buffer;

    const-string v3, "ssh-connection"

    invoke-static {v3}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/jcraft/jsch/Buffer;->b([B)V

    iget-object v2, p0, Lcom/jcraft/jsch/UserAuthPassword;->c:Lcom/jcraft/jsch/Buffer;

    const-string v3, "password"

    invoke-static {v3}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/jcraft/jsch/Buffer;->b([B)V

    iget-object v2, p0, Lcom/jcraft/jsch/UserAuthPassword;->c:Lcom/jcraft/jsch/Buffer;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/jcraft/jsch/Buffer;->a(B)V

    iget-object v2, p0, Lcom/jcraft/jsch/UserAuthPassword;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v2, v6}, Lcom/jcraft/jsch/Buffer;->b([B)V

    iget-object v2, p0, Lcom/jcraft/jsch/UserAuthPassword;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v2, v0}, Lcom/jcraft/jsch/Buffer;->b([B)V

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->c([B)V

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthPassword;->b:Lcom/jcraft/jsch/Packet;

    invoke-virtual {p1, v0}, Lcom/jcraft/jsch/Session;->b(Lcom/jcraft/jsch/Packet;)V

    goto/16 :goto_c9

    :cond_1bb
    const/16 v2, 0x33

    if-ne v0, v2, :cond_1e6

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthPassword;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->c()I

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthPassword;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->f()I

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthPassword;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->f()I

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthPassword;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->i()[B

    move-result-object v0

    iget-object v2, p0, Lcom/jcraft/jsch/UserAuthPassword;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->f()I

    move-result v2

    if-eqz v2, :cond_1ee

    new-instance v1, Lcom/jcraft/jsch/JSchPartialAuthException;

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->b([B)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/jcraft/jsch/JSchPartialAuthException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1e6
    .catchall {:try_start_14c .. :try_end_1e6} :catchall_71

    :cond_1e6
    if-eqz v6, :cond_1eb

    invoke-static {v6}, Lcom/jcraft/jsch/Util;->c([B)V

    :cond_1eb
    move v0, v7

    goto/16 :goto_4d

    :cond_1ee
    if-eqz v6, :cond_1f7

    :try_start_1f0
    invoke-static {v6}, Lcom/jcraft/jsch/Util;->c([B)V
    :try_end_1f3
    .catchall {:try_start_1f0 .. :try_end_1f3} :catchall_71

    const/4 v0, 0x0

    :goto_1f4
    move-object v6, v0

    goto/16 :goto_41

    :cond_1f7
    move-object v0, v6

    goto :goto_1f4
.end method
