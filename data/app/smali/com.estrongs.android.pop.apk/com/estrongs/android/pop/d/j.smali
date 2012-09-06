.class Lcom/estrongs/android/pop/d/j;
.super Ljava/io/InputStream;


# instance fields
.field private a:Ljava/net/Socket;

.field private b:Ljava/io/InputStream;

.field private c:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/net/Socket;Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/d/j;->a:Ljava/net/Socket;

    iput-object v0, p0, Lcom/estrongs/android/pop/d/j;->b:Ljava/io/InputStream;

    iput-object v0, p0, Lcom/estrongs/android/pop/d/j;->c:Ljava/io/OutputStream;

    iput-object p1, p0, Lcom/estrongs/android/pop/d/j;->a:Ljava/net/Socket;

    iput-object p2, p0, Lcom/estrongs/android/pop/d/j;->b:Ljava/io/InputStream;

    iput-object p3, p0, Lcom/estrongs/android/pop/d/j;->c:Ljava/io/OutputStream;

    return-void
.end method


# virtual methods
.method public close()V
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/d/j;->b:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    iget-object v0, p0, Lcom/estrongs/android/pop/d/j;->c:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    iget-object v0, p0, Lcom/estrongs/android/pop/d/j;->a:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    return-void
.end method

.method public read()I
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/d/j;->b:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    return v0
.end method

.method public read([B)I
    .registers 3

    iget-object v0, p0, Lcom/estrongs/android/pop/d/j;->b:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .registers 5

    iget-object v0, p0, Lcom/estrongs/android/pop/d/j;->b:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    return v0
.end method
