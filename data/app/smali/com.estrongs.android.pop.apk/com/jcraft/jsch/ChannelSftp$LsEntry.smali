.class public Lcom/jcraft/jsch/ChannelSftp$LsEntry;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field final synthetic a:Lcom/jcraft/jsch/ChannelSftp;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Lcom/jcraft/jsch/SftpATTRS;


# direct methods
.method constructor <init>(Lcom/jcraft/jsch/ChannelSftp;Ljava/lang/String;Ljava/lang/String;Lcom/jcraft/jsch/SftpATTRS;)V
    .registers 5

    iput-object p1, p0, Lcom/jcraft/jsch/ChannelSftp$LsEntry;->a:Lcom/jcraft/jsch/ChannelSftp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p2}, Lcom/jcraft/jsch/ChannelSftp$LsEntry;->a(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Lcom/jcraft/jsch/ChannelSftp$LsEntry;->b(Ljava/lang/String;)V

    invoke-virtual {p0, p4}, Lcom/jcraft/jsch/ChannelSftp$LsEntry;->a(Lcom/jcraft/jsch/SftpATTRS;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$LsEntry;->b:Ljava/lang/String;

    return-object v0
.end method

.method a(Lcom/jcraft/jsch/SftpATTRS;)V
    .registers 2

    iput-object p1, p0, Lcom/jcraft/jsch/ChannelSftp$LsEntry;->d:Lcom/jcraft/jsch/SftpATTRS;

    return-void
.end method

.method a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/jcraft/jsch/ChannelSftp$LsEntry;->b:Ljava/lang/String;

    return-void
.end method

.method public b()Lcom/jcraft/jsch/SftpATTRS;
    .registers 2

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$LsEntry;->d:Lcom/jcraft/jsch/SftpATTRS;

    return-object v0
.end method

.method b(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/jcraft/jsch/ChannelSftp$LsEntry;->c:Ljava/lang/String;

    return-void
.end method

.method public compareTo(Ljava/lang/Object;)I
    .registers 4

    instance-of v0, p1, Lcom/jcraft/jsch/ChannelSftp$LsEntry;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$LsEntry;->b:Ljava/lang/String;

    check-cast p1, Lcom/jcraft/jsch/ChannelSftp$LsEntry;

    invoke-virtual {p1}, Lcom/jcraft/jsch/ChannelSftp$LsEntry;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_11
    new-instance v0, Ljava/lang/ClassCastException;

    const-string v1, "a decendent of LsEntry must be given."

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$LsEntry;->c:Ljava/lang/String;

    return-object v0
.end method
