.class Lorg/apache/log4j/spi/NullWriter;
.super Ljava/io/Writer;
.source "ThrowableInformation.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 139
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 1

    .prologue
    .line 143
    return-void
.end method

.method public flush()V
    .registers 1

    .prologue
    .line 147
    return-void
.end method

.method public write([CII)V
    .registers 4
    .parameter "cbuf"
    .parameter "off"
    .parameter "len"

    .prologue
    .line 151
    return-void
.end method
