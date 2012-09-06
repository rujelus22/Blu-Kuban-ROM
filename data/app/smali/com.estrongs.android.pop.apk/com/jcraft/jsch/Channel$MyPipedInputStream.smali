.class Lcom/jcraft/jsch/Channel$MyPipedInputStream;
.super Ljava/io/PipedInputStream;


# instance fields
.field final synthetic a:Lcom/jcraft/jsch/Channel;


# direct methods
.method constructor <init>(Lcom/jcraft/jsch/Channel;I)V
    .registers 4

    iput-object p1, p0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->a:Lcom/jcraft/jsch/Channel;

    invoke-direct {p0}, Ljava/io/PipedInputStream;-><init>()V

    new-array v0, p2, [B

    iput-object v0, p0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->buffer:[B

    return-void
.end method

.method constructor <init>(Lcom/jcraft/jsch/Channel;Ljava/io/PipedOutputStream;I)V
    .registers 5

    iput-object p1, p0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->a:Lcom/jcraft/jsch/Channel;

    invoke-direct {p0, p2}, Ljava/io/PipedInputStream;-><init>(Ljava/io/PipedOutputStream;)V

    new-array v0, p3, [B

    iput-object v0, p0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->buffer:[B

    return-void
.end method
