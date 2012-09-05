.class public Lgnu/mail/util/QInputStream;
.super Lgnu/mail/util/QPInputStream;
.source "QInputStream.java"


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 2
    .parameter

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lgnu/mail/util/QPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 76
    return-void
.end method


# virtual methods
.method public read()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 84
    iget-object v0, p0, Lgnu/mail/util/QInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 85
    const/16 v1, 0x5f

    if-ne v0, v1, :cond_e

    .line 86
    const/16 v0, 0x20

    .line 101
    :cond_d
    :goto_d
    return v0

    .line 87
    :cond_e
    const/16 v1, 0x3d

    if-ne v0, v1, :cond_d

    .line 89
    iget-object v0, p0, Lgnu/mail/util/QPInputStream;->buf:[B

    iget-object v1, p0, Lgnu/mail/util/QInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    .line 90
    iget-object v0, p0, Lgnu/mail/util/QPInputStream;->buf:[B

    const/4 v1, 0x1

    iget-object v2, p0, Lgnu/mail/util/QInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 93
    :try_start_29
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lgnu/mail/util/QPInputStream;->buf:[B

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([BII)V

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_37
    .catch Ljava/lang/NumberFormatException; {:try_start_29 .. :try_end_37} :catch_39

    move-result v0

    goto :goto_d

    .line 95
    :catch_39
    move-exception v0

    .line 97
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Quoted-Printable encoding error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
