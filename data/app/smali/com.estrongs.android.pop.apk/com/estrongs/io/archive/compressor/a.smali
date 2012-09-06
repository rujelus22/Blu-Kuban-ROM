.class public abstract Lcom/estrongs/io/archive/compressor/a;
.super Lcom/estrongs/io/archive/h;


# instance fields
.field private g:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/estrongs/io/archive/h;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/io/archive/compressor/a;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/io/archive/compressor/a;->b:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/io/InputStream;
    .registers 3

    iget-object v0, p0, Lcom/estrongs/io/archive/compressor/a;->g:Ljava/io/InputStream;

    if-nez v0, :cond_a

    invoke-virtual {p0}, Lcom/estrongs/io/archive/compressor/a;->j()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/io/archive/compressor/a;->g:Ljava/io/InputStream;

    :cond_a
    iget-object v0, p0, Lcom/estrongs/io/archive/compressor/a;->g:Ljava/io/InputStream;

    return-object v0
.end method

.method public b()V
    .registers 1

    return-void
.end method

.method public c()V
    .registers 2

    iget-object v0, p0, Lcom/estrongs/io/archive/compressor/a;->g:Ljava/io/InputStream;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/estrongs/io/archive/compressor/a;->g:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_9
    return-void
.end method

.method protected i()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/estrongs/io/model/ArchiveEntryFile;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/estrongs/io/archive/compressor/b;

    invoke-direct {v0, p0}, Lcom/estrongs/io/archive/compressor/b;-><init>(Lcom/estrongs/io/archive/compressor/a;)V

    return-object v0
.end method

.method protected abstract j()Ljava/io/InputStream;
.end method
