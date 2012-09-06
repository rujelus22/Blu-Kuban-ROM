.class public final Laly;
.super Ljava/lang/Object;
.source "CharStreams.java"


# direct methods
.method public static a(Ljava/lang/Readable;Ljava/lang/Appendable;)J
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 200
    const/16 v0, 0x800

    invoke-static {v0}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v2

    .line 201
    const-wide/16 v0, 0x0

    .line 203
    :goto_8
    invoke-interface {p0, v2}, Ljava/lang/Readable;->read(Ljava/nio/CharBuffer;)I

    move-result v3

    .line 204
    const/4 v4, -0x1

    if-ne v3, v4, :cond_10

    .line 211
    return-wide v0

    .line 207
    :cond_10
    invoke-virtual {v2}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    .line 208
    const/4 v4, 0x0

    invoke-interface {p1, v2, v4, v3}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;

    .line 209
    int-to-long v3, v3

    add-long/2addr v0, v3

    .line 210
    goto :goto_8
.end method

.method public static a(Ljava/lang/Readable;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 223
    invoke-static {p0}, Laly;->a(Ljava/lang/Readable;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/Readable;)Ljava/lang/StringBuilder;
    .registers 2
    .parameter

    .prologue
    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 249
    invoke-static {p0, v0}, Laly;->a(Ljava/lang/Readable;Ljava/lang/Appendable;)J

    .line 250
    return-object v0
.end method
