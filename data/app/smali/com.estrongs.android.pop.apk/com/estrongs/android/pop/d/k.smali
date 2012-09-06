.class Lcom/estrongs/android/pop/d/k;
.super Ljava/io/OutputStream;


# instance fields
.field private a:Ljava/net/Socket;

.field private b:Ljava/io/InputStream;

.field private c:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/net/Socket;Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/d/k;->a:Ljava/net/Socket;

    iput-object v0, p0, Lcom/estrongs/android/pop/d/k;->b:Ljava/io/InputStream;

    iput-object v0, p0, Lcom/estrongs/android/pop/d/k;->c:Ljava/io/OutputStream;

    iput-object p1, p0, Lcom/estrongs/android/pop/d/k;->a:Ljava/net/Socket;

    iput-object p2, p0, Lcom/estrongs/android/pop/d/k;->b:Ljava/io/InputStream;

    iput-object p3, p0, Lcom/estrongs/android/pop/d/k;->c:Ljava/io/OutputStream;

    return-void
.end method


# virtual methods
.method public close()V
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/d/k;->c:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    iget-object v0, p0, Lcom/estrongs/android/pop/d/k;->b:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    iget-object v0, p0, Lcom/estrongs/android/pop/d/k;->a:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    return-void
.end method

.method public flush()V
    .registers 1

    return-void
.end method

.method public write(I)V
    .registers 3

    iget-object v0, p0, Lcom/estrongs/android/pop/d/k;->c:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method public write([B)V
    .registers 3

    iget-object v0, p0, Lcom/estrongs/android/pop/d/k;->c:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public write([BII)V
    .registers 5

    iget-object v0, p0, Lcom/estrongs/android/pop/d/k;->c:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method
