.class Lcom/jcraft/jsch/Channel$PassiveOutputStream;
.super Ljava/io/PipedOutputStream;


# instance fields
.field final synthetic a:Lcom/jcraft/jsch/Channel;


# direct methods
.method constructor <init>(Lcom/jcraft/jsch/Channel;Ljava/io/PipedInputStream;)V
    .registers 3

    iput-object p1, p0, Lcom/jcraft/jsch/Channel$PassiveOutputStream;->a:Lcom/jcraft/jsch/Channel;

    invoke-direct {p0, p2}, Ljava/io/PipedOutputStream;-><init>(Ljava/io/PipedInputStream;)V

    return-void
.end method
