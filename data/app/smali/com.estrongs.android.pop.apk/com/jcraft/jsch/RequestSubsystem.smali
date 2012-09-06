.class public Lcom/jcraft/jsch/RequestSubsystem;
.super Lcom/jcraft/jsch/Request;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/jcraft/jsch/Request;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jcraft/jsch/RequestSubsystem;->a:Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/jcraft/jsch/RequestSubsystem;->a()Z

    move-result v0

    if-eqz v0, :cond_3d

    const/4 v0, 0x1

    :goto_2c
    int-to-byte v0, v0

    invoke-virtual {v1, v0}, Lcom/jcraft/jsch/Buffer;->a(B)V

    iget-object v0, p0, Lcom/jcraft/jsch/RequestSubsystem;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->b(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/jcraft/jsch/Buffer;->b([B)V

    invoke-virtual {p0, v2}, Lcom/jcraft/jsch/RequestSubsystem;->a(Lcom/jcraft/jsch/Packet;)V

    return-void

    :cond_3d
    const/4 v0, 0x0

    goto :goto_2c
.end method

.method public a(Lcom/jcraft/jsch/Session;Lcom/jcraft/jsch/Channel;Ljava/lang/String;Z)V
    .registers 5

    invoke-virtual {p0, p4}, Lcom/jcraft/jsch/RequestSubsystem;->a(Z)V

    iput-object p3, p0, Lcom/jcraft/jsch/RequestSubsystem;->a:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/jcraft/jsch/RequestSubsystem;->a(Lcom/jcraft/jsch/Session;Lcom/jcraft/jsch/Channel;)V

    return-void
.end method
