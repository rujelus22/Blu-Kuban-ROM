.class Lcom/google/android/apps/plus/network/HttpTransaction$CountingOutputStream;
.super Ljava/io/FilterOutputStream;
.source "HttpTransaction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/network/HttpTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CountingOutputStream"
.end annotation


# instance fields
.field private final mChunk:J

.field private final mLength:J

.field private mNext:J

.field private final mTransaction:Lcom/google/android/apps/plus/network/HttpTransaction;

.field private mTransferred:J


# direct methods
.method public constructor <init>(Lcom/google/android/apps/plus/network/HttpTransaction;Ljava/io/OutputStream;J)V
    .registers 9
    .parameter "transaction"
    .parameter "out"
    .parameter "length"

    .prologue
    .line 176
    invoke-direct {p0, p2}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 177
    iput-object p1, p0, Lcom/google/android/apps/plus/network/HttpTransaction$CountingOutputStream;->mTransaction:Lcom/google/android/apps/plus/network/HttpTransaction;

    .line 178
    const-wide/16 v0, 0x2

    mul-long/2addr v0, p3

    iput-wide v0, p0, Lcom/google/android/apps/plus/network/HttpTransaction$CountingOutputStream;->mLength:J

    .line 179
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/apps/plus/network/HttpTransaction$CountingOutputStream;->mTransferred:J

    .line 180
    iget-wide v0, p0, Lcom/google/android/apps/plus/network/HttpTransaction$CountingOutputStream;->mLength:J

    const-wide/16 v2, 0x5

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/apps/plus/network/HttpTransaction$CountingOutputStream;->mChunk:J

    .line 181
    iget-wide v0, p0, Lcom/google/android/apps/plus/network/HttpTransaction$CountingOutputStream;->mChunk:J

    iput-wide v0, p0, Lcom/google/android/apps/plus/network/HttpTransaction$CountingOutputStream;->mNext:J

    .line 182
    return-void
.end method


# virtual methods
.method public write(I)V
    .registers 7
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 203
    invoke-super {p0, p1}, Ljava/io/FilterOutputStream;->write(I)V

    .line 204
    iget-wide v0, p0, Lcom/google/android/apps/plus/network/HttpTransaction$CountingOutputStream;->mTransferred:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/apps/plus/network/HttpTransaction$CountingOutputStream;->mTransferred:J

    .line 205
    iget-wide v0, p0, Lcom/google/android/apps/plus/network/HttpTransaction$CountingOutputStream;->mTransferred:J

    iget-wide v2, p0, Lcom/google/android/apps/plus/network/HttpTransaction$CountingOutputStream;->mNext:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_29

    .line 206
    invoke-super {p0}, Ljava/io/FilterOutputStream;->flush()V

    .line 207
    iget-object v0, p0, Lcom/google/android/apps/plus/network/HttpTransaction$CountingOutputStream;->mTransaction:Lcom/google/android/apps/plus/network/HttpTransaction;

    #calls: Lcom/google/android/apps/plus/network/HttpTransaction;->getListener()Lcom/google/android/apps/plus/network/HttpTransaction$HttpTransactionListener;
    invoke-static {v0}, Lcom/google/android/apps/plus/network/HttpTransaction;->access$000(Lcom/google/android/apps/plus/network/HttpTransaction;)Lcom/google/android/apps/plus/network/HttpTransaction$HttpTransactionListener;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/apps/plus/network/HttpTransaction$CountingOutputStream;->mTransferred:J

    iget-wide v3, p0, Lcom/google/android/apps/plus/network/HttpTransaction$CountingOutputStream;->mLength:J

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/android/apps/plus/network/HttpTransaction$HttpTransactionListener;->onHttpUploadProgress(JJ)V

    .line 208
    iget-wide v0, p0, Lcom/google/android/apps/plus/network/HttpTransaction$CountingOutputStream;->mNext:J

    iget-wide v2, p0, Lcom/google/android/apps/plus/network/HttpTransaction$CountingOutputStream;->mChunk:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/apps/plus/network/HttpTransaction$CountingOutputStream;->mNext:J

    .line 210
    :cond_29
    return-void
.end method

.method public write([BII)V
    .registers 9
    .parameter "b"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 189
    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterOutputStream;->write([BII)V

    .line 190
    iget-wide v0, p0, Lcom/google/android/apps/plus/network/HttpTransaction$CountingOutputStream;->mTransferred:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/apps/plus/network/HttpTransaction$CountingOutputStream;->mTransferred:J

    .line 191
    iget-wide v0, p0, Lcom/google/android/apps/plus/network/HttpTransaction$CountingOutputStream;->mTransferred:J

    iget-wide v2, p0, Lcom/google/android/apps/plus/network/HttpTransaction$CountingOutputStream;->mNext:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_28

    .line 192
    invoke-super {p0}, Ljava/io/FilterOutputStream;->flush()V

    .line 193
    iget-object v0, p0, Lcom/google/android/apps/plus/network/HttpTransaction$CountingOutputStream;->mTransaction:Lcom/google/android/apps/plus/network/HttpTransaction;

    #calls: Lcom/google/android/apps/plus/network/HttpTransaction;->getListener()Lcom/google/android/apps/plus/network/HttpTransaction$HttpTransactionListener;
    invoke-static {v0}, Lcom/google/android/apps/plus/network/HttpTransaction;->access$000(Lcom/google/android/apps/plus/network/HttpTransaction;)Lcom/google/android/apps/plus/network/HttpTransaction$HttpTransactionListener;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/apps/plus/network/HttpTransaction$CountingOutputStream;->mTransferred:J

    iget-wide v3, p0, Lcom/google/android/apps/plus/network/HttpTransaction$CountingOutputStream;->mLength:J

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/android/apps/plus/network/HttpTransaction$HttpTransactionListener;->onHttpUploadProgress(JJ)V

    .line 194
    iget-wide v0, p0, Lcom/google/android/apps/plus/network/HttpTransaction$CountingOutputStream;->mNext:J

    iget-wide v2, p0, Lcom/google/android/apps/plus/network/HttpTransaction$CountingOutputStream;->mChunk:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/apps/plus/network/HttpTransaction$CountingOutputStream;->mNext:J

    .line 196
    :cond_28
    return-void
.end method
