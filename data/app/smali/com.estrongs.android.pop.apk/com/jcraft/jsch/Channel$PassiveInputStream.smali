.class Lcom/jcraft/jsch/Channel$PassiveInputStream;
.super Lcom/jcraft/jsch/Channel$MyPipedInputStream;


# instance fields
.field b:Ljava/io/PipedOutputStream;

.field final synthetic c:Lcom/jcraft/jsch/Channel;


# direct methods
.method constructor <init>(Lcom/jcraft/jsch/Channel;Ljava/io/PipedOutputStream;I)V
    .registers 4

    iput-object p1, p0, Lcom/jcraft/jsch/Channel$PassiveInputStream;->c:Lcom/jcraft/jsch/Channel;

    invoke-direct {p0, p1, p2, p3}, Lcom/jcraft/jsch/Channel$MyPipedInputStream;-><init>(Lcom/jcraft/jsch/Channel;Ljava/io/PipedOutputStream;I)V

    iput-object p2, p0, Lcom/jcraft/jsch/Channel$PassiveInputStream;->b:Ljava/io/PipedOutputStream;

    return-void
.end method


# virtual methods
.method public close()V
    .registers 2

    iget-object v0, p0, Lcom/jcraft/jsch/Channel$PassiveInputStream;->b:Ljava/io/PipedOutputStream;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/jcraft/jsch/Channel$PassiveInputStream;->b:Ljava/io/PipedOutputStream;

    invoke-virtual {v0}, Ljava/io/PipedOutputStream;->close()V

    :cond_9
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jcraft/jsch/Channel$PassiveInputStream;->b:Ljava/io/PipedOutputStream;

    return-void
.end method
