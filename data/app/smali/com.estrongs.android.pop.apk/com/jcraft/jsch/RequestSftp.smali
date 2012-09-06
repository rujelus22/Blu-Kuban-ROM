.class public Lcom/jcraft/jsch/RequestSftp;
.super Lcom/jcraft/jsch/Request;


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/jcraft/jsch/Request;-><init>()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/RequestSftp;->a(Z)V

    return-void
.end method


# virtual methods
.method public a(Lcom/jcraft/jsch/Session;Lcom/jcraft/jsch/Channel;)V
    .registers 6

    invoke-super {p0, p1, p2}, Lcom/jcraft/jsch/Request;->a(Lcom/jcraft/jsch/Session;Lcom/jcraft/jsch/Channel;)V

    new-instance v1, Lcom/jcraft/jsch/Buffer;

    invoke-direct {v1}, Lcom/jcraft/jsch/Buffer;-><init>()V

    new-instance v2, Lcom/jcraft/jsch/Packet;

    invoke-direct {v2, v1}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    invoke-virtual {v2}, Lcom/jcraft/jsch/Packet;->a()V

    const/16 v0, 0x62

    invoke-virtual {v1, v0}, Lcom/jcraft/jsch/Buffer;->a(B)V

    invoke-virtual {p2}, Lcom/jcraft/jsch/Channel;->a()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/jcraft/jsch/Buffer;->a(I)V

    const-string v0, "subsystem"

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/jcraft/jsch/Buffer;->b([B)V

    invoke-virtual {p0}, Lcom/jcraft/jsch/RequestSftp;->a()Z

    move-result v0

    if-eqz v0, :cond_3d

    const/4 v0, 0x1

    :goto_2c
    int-to-byte v0, v0

    invoke-virtual {v1, v0}, Lcom/jcraft/jsch/Buffer;->a(B)V

    const-string v0, "sftp"

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/jcraft/jsch/Buffer;->b([B)V

    invoke-virtual {p0, v2}, Lcom/jcraft/jsch/RequestSftp;->a(Lcom/jcraft/jsch/Packet;)V

    return-void

    :cond_3d
    const/4 v0, 0x0

    goto :goto_2c
.end method
