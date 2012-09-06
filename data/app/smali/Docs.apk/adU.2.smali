.class public LadU;
.super LadN;
.source "GsonFactory.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 44
    invoke-direct {p0}, LadN;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)LadO;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 76
    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-direct {v0, p1, p2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-virtual {p0, v0}, LadU;->a(Ljava/io/Writer;)LadO;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/io/Writer;)LadO;
    .registers 4
    .parameter

    .prologue
    .line 81
    new-instance v0, LadV;

    new-instance v1, Lanb;

    invoke-direct {v1, p1}, Lanb;-><init>(Ljava/io/Writer;)V

    invoke-direct {v0, p0, v1}, LadV;-><init>(LadU;Lanb;)V

    return-object v0
.end method

.method public a(Ljava/io/InputStream;)LadQ;
    .registers 4
    .parameter

    .prologue
    .line 49
    new-instance v0, Ljava/io/InputStreamReader;

    sget-object v1, LafC;->c:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-virtual {p0, v0}, LadU;->a(Ljava/io/Reader;)LadQ;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/io/InputStream;Ljava/nio/charset/Charset;)LadQ;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 54
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-virtual {p0, v0}, LadU;->a(Ljava/io/Reader;)LadQ;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/io/Reader;)LadQ;
    .registers 4
    .parameter

    .prologue
    .line 64
    new-instance v0, LadW;

    new-instance v1, LamW;

    invoke-direct {v1, p1}, LamW;-><init>(Ljava/io/Reader;)V

    invoke-direct {v0, p0, v1}, LadW;-><init>(LadU;LamW;)V

    return-object v0
.end method
