.class abstract Lorg/codehaus/jackson/b/a;
.super Ljava/io/Reader;
.source "SourceFile"


# instance fields
.field protected final a:Lorg/codehaus/jackson/b/c;

.field protected b:Ljava/io/InputStream;

.field protected c:[B

.field protected d:I

.field protected e:I

.field protected f:[C


# direct methods
.method protected constructor <init>(Lorg/codehaus/jackson/b/c;Ljava/io/InputStream;[BII)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codehaus/jackson/b/a;->f:[C

    .line 42
    iput-object p1, p0, Lorg/codehaus/jackson/b/a;->a:Lorg/codehaus/jackson/b/c;

    .line 43
    iput-object p2, p0, Lorg/codehaus/jackson/b/a;->b:Ljava/io/InputStream;

    .line 44
    iput-object p3, p0, Lorg/codehaus/jackson/b/a;->c:[B

    .line 45
    iput p4, p0, Lorg/codehaus/jackson/b/a;->d:I

    .line 46
    iput p5, p0, Lorg/codehaus/jackson/b/a;->e:I

    .line 47
    return-void
.end method

.method protected static b()V
    .registers 2

    .prologue
    .line 115
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Strange I/O stream, returned 0 bytes on read"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a()V
    .registers 3

    .prologue
    .line 99
    iget-object v0, p0, Lorg/codehaus/jackson/b/a;->c:[B

    .line 100
    if-eqz v0, :cond_c

    .line 101
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/codehaus/jackson/b/a;->c:[B

    .line 102
    iget-object v1, p0, Lorg/codehaus/jackson/b/a;->a:Lorg/codehaus/jackson/b/c;

    invoke-virtual {v1, v0}, Lorg/codehaus/jackson/b/c;->a([B)V

    .line 104
    :cond_c
    return-void
.end method

.method public close()V
    .registers 3

    .prologue
    .line 58
    iget-object v0, p0, Lorg/codehaus/jackson/b/a;->b:Ljava/io/InputStream;

    .line 60
    if-eqz v0, :cond_d

    .line 61
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/codehaus/jackson/b/a;->b:Ljava/io/InputStream;

    .line 62
    invoke-virtual {p0}, Lorg/codehaus/jackson/b/a;->a()V

    .line 63
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 65
    :cond_d
    return-void
.end method

.method public read()I
    .registers 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 77
    iget-object v0, p0, Lorg/codehaus/jackson/b/a;->f:[C

    if-nez v0, :cond_a

    .line 78
    new-array v0, v2, [C

    iput-object v0, p0, Lorg/codehaus/jackson/b/a;->f:[C

    .line 80
    :cond_a
    iget-object v0, p0, Lorg/codehaus/jackson/b/a;->f:[C

    invoke-virtual {p0, v0, v1, v2}, Lorg/codehaus/jackson/b/a;->read([CII)I

    move-result v0

    if-gtz v0, :cond_14

    .line 81
    const/4 v0, -0x1

    .line 83
    :goto_13
    return v0

    :cond_14
    iget-object v0, p0, Lorg/codehaus/jackson/b/a;->f:[C

    aget-char v0, v0, v1

    goto :goto_13
.end method
