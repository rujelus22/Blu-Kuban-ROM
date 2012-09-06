.class public Lorg/apache/james/mime4j/MimeIOException;
.super Ljava/io/IOException;


# static fields
.field private static final serialVersionUID:J = 0x4ad9f6dd674625f1L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    new-instance v0, Lorg/apache/james/mime4j/MimeException;

    invoke-direct {v0, p1}, Lorg/apache/james/mime4j/MimeException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/MimeIOException;-><init>(Lorg/apache/james/mime4j/MimeException;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/james/mime4j/MimeException;)V
    .registers 3

    invoke-virtual {p1}, Lorg/apache/james/mime4j/MimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lorg/apache/james/mime4j/MimeIOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    return-void
.end method
