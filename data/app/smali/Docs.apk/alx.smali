.class public final Lalx;
.super Ljava/lang/Object;
.source "ByteStreams.java"


# direct methods
.method public static a(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 190
    const/16 v0, 0x1000

    new-array v2, v0, [B

    .line 191
    const-wide/16 v0, 0x0

    .line 193
    :goto_6
    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .line 194
    const/4 v4, -0x1

    if-ne v3, v4, :cond_e

    .line 200
    return-wide v0

    .line 197
    :cond_e
    const/4 v4, 0x0

    invoke-virtual {p1, v2, v4, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 198
    int-to-long v3, v3

    add-long/2addr v0, v3

    .line 199
    goto :goto_6
.end method
