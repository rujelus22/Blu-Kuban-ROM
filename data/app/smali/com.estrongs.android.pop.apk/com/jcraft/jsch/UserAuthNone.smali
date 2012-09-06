.class Lcom/jcraft/jsch/UserAuthNone;
.super Lcom/jcraft/jsch/UserAuth;


# instance fields
.field private e:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/jcraft/jsch/UserAuth;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jcraft/jsch/UserAuthNone;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthNone;->e:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lcom/jcraft/jsch/Session;)Z
    .registers 7

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-super {p0, p1}, Lcom/jcraft/jsch/UserAuth;->a(Lcom/jcraft/jsch/Session;)Z

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthNone;->b:Lcom/jcraft/jsch/Packet;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Packet;->a()V

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthNone;->c:Lcom/jcraft/jsch/Buffer;

    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Lcom/jcraft/jsch/Buffer;->a(B)V

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthNone;->c:Lcom/jcraft/jsch/Buffer;

    const-string v3, "ssh-userauth"

    invoke-static {v3}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/jcraft/jsch/Buffer;->b([B)V

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthNone;->b:Lcom/jcraft/jsch/Packet;

    invoke-virtual {p1, v0}, Lcom/jcraft/jsch/Session;->b(Lcom/jcraft/jsch/Packet;)V

    invoke-static {}, Lcom/jcraft/jsch/JSch;->b()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/jcraft/jsch/Logger;->a(I)Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-static {}, Lcom/jcraft/jsch/JSch;->b()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    const-string v3, "SSH_MSG_SERVICE_REQUEST sent"

    invoke-interface {v0, v1, v3}, Lcom/jcraft/jsch/Logger;->a(ILjava/lang/String;)V

    :cond_33
    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthNone;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p1, v0}, Lcom/jcraft/jsch/Session;->a(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/Buffer;

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/UserAuthNone;->c:Lcom/jcraft/jsch/Buffer;

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthNone;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->m()B

    move-result v0

    const/4 v3, 0x6

    if-ne v0, v3, :cond_5b

    move v0, v1

    :goto_45
    invoke-static {}, Lcom/jcraft/jsch/JSch;->b()Lcom/jcraft/jsch/Logger;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/jcraft/jsch/Logger;->a(I)Z

    move-result v3

    if-eqz v3, :cond_58

    invoke-static {}, Lcom/jcraft/jsch/JSch;->b()Lcom/jcraft/jsch/Logger;

    move-result-object v3

    const-string v4, "SSH_MSG_SERVICE_ACCEPT received"

    invoke-interface {v3, v1, v4}, Lcom/jcraft/jsch/Logger;->a(ILjava/lang/String;)V

    :cond_58
    if-nez v0, :cond_5d

    :goto_5a
    return v2

    :cond_5b
    move v0, v2

    goto :goto_45

    :cond_5d
    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthNone;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;)[B

    move-result-object v0

    iget-object v3, p0, Lcom/jcraft/jsch/UserAuthNone;->b:Lcom/jcraft/jsch/Packet;

    invoke-virtual {v3}, Lcom/jcraft/jsch/Packet;->a()V

    iget-object v3, p0, Lcom/jcraft/jsch/UserAuthNone;->c:Lcom/jcraft/jsch/Buffer;

    const/16 v4, 0x32

    invoke-virtual {v3, v4}, Lcom/jcraft/jsch/Buffer;->a(B)V

    iget-object v3, p0, Lcom/jcraft/jsch/UserAuthNone;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v3, v0}, Lcom/jcraft/jsch/Buffer;->b([B)V

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthNone;->c:Lcom/jcraft/jsch/Buffer;

    const-string v3, "ssh-connection"

    invoke-static {v3}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/jcraft/jsch/Buffer;->b([B)V

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthNone;->c:Lcom/jcraft/jsch/Buffer;

    const-string v3, "none"

    invoke-static {v3}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/jcraft/jsch/Buffer;->b([B)V

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthNone;->b:Lcom/jcraft/jsch/Packet;

    invoke-virtual {p1, v0}, Lcom/jcraft/jsch/Session;->b(Lcom/jcraft/jsch/Packet;)V

    :cond_8f
    :goto_8f
    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthNone;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p1, v0}, Lcom/jcraft/jsch/Session;->a(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/Buffer;

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/UserAuthNone;->c:Lcom/jcraft/jsch/Buffer;

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthNone;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->m()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/16 v3, 0x34

    if-ne v0, v3, :cond_a5

    move v2, v1

    goto :goto_5a

    :cond_a5
    const/16 v3, 0x35

    if-ne v0, v3, :cond_d3

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthNone;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->c()I

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthNone;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->f()I

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthNone;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->f()I

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthNone;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->i()[B

    move-result-object v0

    iget-object v3, p0, Lcom/jcraft/jsch/UserAuthNone;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v3}, Lcom/jcraft/jsch/Buffer;->i()[B

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->b([B)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/jcraft/jsch/UserAuthNone;->a:Lcom/jcraft/jsch/UserInfo;

    if-eqz v3, :cond_8f

    :try_start_cb
    iget-object v3, p0, Lcom/jcraft/jsch/UserAuthNone;->a:Lcom/jcraft/jsch/UserInfo;

    invoke-interface {v3, v0}, Lcom/jcraft/jsch/UserInfo;->d(Ljava/lang/String;)V
    :try_end_d0
    .catch Ljava/lang/RuntimeException; {:try_start_cb .. :try_end_d0} :catch_d1

    goto :goto_8f

    :catch_d1
    move-exception v0

    goto :goto_8f

    :cond_d3
    const/16 v1, 0x33

    if-ne v0, v1, :cond_f9

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthNone;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->c()I

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthNone;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->f()I

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthNone;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->f()I

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthNone;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->i()[B

    move-result-object v0

    iget-object v1, p0, Lcom/jcraft/jsch/UserAuthNone;->c:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v1}, Lcom/jcraft/jsch/Buffer;->f()I

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->b([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/UserAuthNone;->e:Ljava/lang/String;

    goto/16 :goto_5a

    :cond_f9
    new-instance v1, Lcom/jcraft/jsch/JSchException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "USERAUTH fail ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
