.class public final Lcom/dropbox/android/util/R;
.super Ljava/io/OutputStream;
.source "panda.py"


# instance fields
.field private final a:Lcom/dropbox/android/util/P;

.field private final b:Ljava/io/OutputStream;

.field private final c:[B


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;[BJ)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 55
    const/16 v0, 0x2000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/dropbox/android/util/R;->c:[B

    .line 58
    iput-object p1, p0, Lcom/dropbox/android/util/R;->b:Ljava/io/OutputStream;

    .line 59
    new-instance v0, Lcom/dropbox/android/util/P;

    invoke-direct {v0, p2}, Lcom/dropbox/android/util/P;-><init>([B)V

    iput-object v0, p0, Lcom/dropbox/android/util/R;->a:Lcom/dropbox/android/util/P;

    .line 60
    iget-object v0, p0, Lcom/dropbox/android/util/R;->a:Lcom/dropbox/android/util/P;

    invoke-virtual {v0, p3, p4}, Lcom/dropbox/android/util/P;->a(J)V

    .line 61
    return-void
.end method


# virtual methods
.method public final close()V
    .registers 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/dropbox/android/util/R;->b:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 78
    return-void
.end method

.method public final flush()V
    .registers 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/dropbox/android/util/R;->b:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 83
    return-void
.end method

.method public final write(I)V
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 87
    new-array v0, v3, [B

    .line 88
    int-to-byte v1, p1

    aput-byte v1, v0, v2

    .line 89
    invoke-virtual {p0, v0, v2, v3}, Lcom/dropbox/android/util/R;->write([BII)V

    .line 90
    return-void
.end method

.method public final write([BII)V
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 66
    move v2, p2

    :goto_2
    if-lez p3, :cond_1d

    .line 67
    iget-object v0, p0, Lcom/dropbox/android/util/R;->c:[B

    array-length v0, v0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 68
    iget-object v0, p0, Lcom/dropbox/android/util/R;->a:Lcom/dropbox/android/util/P;

    iget-object v3, p0, Lcom/dropbox/android/util/R;->c:[B

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/dropbox/android/util/P;->a([BI[BII)V

    .line 69
    iget-object v0, p0, Lcom/dropbox/android/util/R;->b:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/dropbox/android/util/R;->c:[B

    invoke-virtual {v0, v1, v4, v5}, Ljava/io/OutputStream;->write([BII)V

    .line 70
    sub-int/2addr p3, v5

    .line 71
    add-int/2addr v2, v5

    .line 72
    goto :goto_2

    .line 73
    :cond_1d
    return-void
.end method
