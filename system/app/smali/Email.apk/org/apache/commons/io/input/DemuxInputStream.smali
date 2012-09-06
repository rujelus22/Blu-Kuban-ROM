.class public Lorg/apache/commons/io/input/DemuxInputStream;
.super Ljava/io/InputStream;
.source "DemuxInputStream.java"


# instance fields
.field private m_streams:Ljava/lang/InheritableThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/InheritableThreadLocal",
            "<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 32
    new-instance v0, Ljava/lang/InheritableThreadLocal;

    invoke-direct {v0}, Ljava/lang/InheritableThreadLocal;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/io/input/DemuxInputStream;->m_streams:Ljava/lang/InheritableThreadLocal;

    return-void
.end method

.method private getStream()Ljava/io/InputStream;
    .registers 2

    .prologue
    .line 91
    iget-object v0, p0, Lorg/apache/commons/io/input/DemuxInputStream;->m_streams:Ljava/lang/InheritableThreadLocal;

    invoke-virtual {v0}, Ljava/lang/InheritableThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    return-object v0
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 56
    invoke-direct {p0}, Lorg/apache/commons/io/input/DemuxInputStream;->getStream()Ljava/io/InputStream;

    move-result-object v0

    .line 57
    .local v0, input:Ljava/io/InputStream;
    if-eqz v0, :cond_9

    .line 59
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 61
    :cond_9
    return-void
.end method

.method public read()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 73
    invoke-direct {p0}, Lorg/apache/commons/io/input/DemuxInputStream;->getStream()Ljava/io/InputStream;

    move-result-object v0

    .line 74
    .local v0, input:Ljava/io/InputStream;
    if-eqz v0, :cond_b

    .line 76
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 80
    :goto_a
    return v1

    :cond_b
    const/4 v1, -0x1

    goto :goto_a
.end method
