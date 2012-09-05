.class Lcom/sec/print/mobileprint/io/ImageController$ByteBufferOutputStream;
.super Ljava/io/OutputStream;
.source "ImageController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/print/mobileprint/io/ImageController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ByteBufferOutputStream"
.end annotation


# instance fields
.field mCurCursor:I

.field mOutputBuffer:[B

.field final synthetic this$0:Lcom/sec/print/mobileprint/io/ImageController;


# direct methods
.method public constructor <init>(Lcom/sec/print/mobileprint/io/ImageController;[B)V
    .registers 5
    .parameter
    .parameter "outputBuffer"

    .prologue
    const/4 v1, 0x0

    .line 127
    iput-object p1, p0, Lcom/sec/print/mobileprint/io/ImageController$ByteBufferOutputStream;->this$0:Lcom/sec/print/mobileprint/io/ImageController;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 123
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/print/mobileprint/io/ImageController$ByteBufferOutputStream;->mOutputBuffer:[B

    .line 124
    iput v1, p0, Lcom/sec/print/mobileprint/io/ImageController$ByteBufferOutputStream;->mCurCursor:I

    .line 128
    iput-object p2, p0, Lcom/sec/print/mobileprint/io/ImageController$ByteBufferOutputStream;->mOutputBuffer:[B

    .line 129
    iput v1, p0, Lcom/sec/print/mobileprint/io/ImageController$ByteBufferOutputStream;->mCurCursor:I

    .line 130
    return-void
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
    .line 140
    invoke-super {p0}, Ljava/io/OutputStream;->close()V

    .line 142
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/print/mobileprint/io/ImageController$ByteBufferOutputStream;->mOutputBuffer:[B

    .line 143
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/print/mobileprint/io/ImageController$ByteBufferOutputStream;->mCurCursor:I

    .line 144
    return-void
.end method

.method public getLength()I
    .registers 2

    .prologue
    .line 134
    iget v0, p0, Lcom/sec/print/mobileprint/io/ImageController$ByteBufferOutputStream;->mCurCursor:I

    return v0
.end method

.method public write(I)V
    .registers 5
    .parameter "oneByte"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 149
    iget v0, p0, Lcom/sec/print/mobileprint/io/ImageController$ByteBufferOutputStream;->mCurCursor:I

    iget-object v1, p0, Lcom/sec/print/mobileprint/io/ImageController$ByteBufferOutputStream;->mOutputBuffer:[B

    array-length v1, v1

    if-lt v0, v1, :cond_d

    .line 150
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 153
    :cond_d
    iget-object v0, p0, Lcom/sec/print/mobileprint/io/ImageController$ByteBufferOutputStream;->mOutputBuffer:[B

    iget v1, p0, Lcom/sec/print/mobileprint/io/ImageController$ByteBufferOutputStream;->mCurCursor:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 154
    iget v0, p0, Lcom/sec/print/mobileprint/io/ImageController$ByteBufferOutputStream;->mCurCursor:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/print/mobileprint/io/ImageController$ByteBufferOutputStream;->mCurCursor:I

    .line 155
    return-void
.end method
