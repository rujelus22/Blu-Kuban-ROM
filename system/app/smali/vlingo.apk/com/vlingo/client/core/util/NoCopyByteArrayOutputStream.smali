.class public Lcom/vlingo/client/core/util/NoCopyByteArrayOutputStream;
.super Ljava/io/ByteArrayOutputStream;
.source "NoCopyByteArrayOutputStream.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 23
    return-void
.end method

.method public constructor <init>(I)V
    .registers 2
    .parameter "size"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 34
    return-void
.end method

.method public constructor <init>([BI)V
    .registers 3
    .parameter "buffer"
    .parameter "offset"

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/vlingo/client/core/util/NoCopyByteArrayOutputStream;->buf:[B

    .line 29
    iput p2, p0, Lcom/vlingo/client/core/util/NoCopyByteArrayOutputStream;->count:I

    .line 30
    return-void
.end method


# virtual methods
.method public getByteArray()[B
    .registers 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/vlingo/client/core/util/NoCopyByteArrayOutputStream;->buf:[B

    return-object v0
.end method
