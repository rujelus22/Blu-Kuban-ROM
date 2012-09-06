.class public final Lcom/dropbox/android/util/Q;
.super Ljava/io/InputStream;
.source "panda.py"


# instance fields
.field private final a:Lcom/dropbox/android/util/P;

.field private final b:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;[B)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/dropbox/android/util/Q;->b:Ljava/io/InputStream;

    .line 23
    new-instance v0, Lcom/dropbox/android/util/P;

    invoke-direct {v0, p2}, Lcom/dropbox/android/util/P;-><init>([B)V

    iput-object v0, p0, Lcom/dropbox/android/util/Q;->a:Lcom/dropbox/android/util/P;

    .line 24
    return-void
.end method


# virtual methods
.method public final close()V
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/dropbox/android/util/Q;->b:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 46
    return-void
.end method

.method public final read()I
    .registers 2

    .prologue
    .line 39
    const/4 v0, 0x1

    new-array v0, v0, [B

    .line 40
    invoke-virtual {p0, v0}, Lcom/dropbox/android/util/Q;->read([B)I

    move-result v0

    return v0
.end method

.method public final read([BII)I
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 29
    iget-object v1, p0, Lcom/dropbox/android/util/Q;->b:Ljava/io/InputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    .line 30
    if-ne v5, v0, :cond_b

    move v5, v0

    .line 34
    :goto_a
    return v5

    .line 33
    :cond_b
    iget-object v0, p0, Lcom/dropbox/android/util/Q;->a:Lcom/dropbox/android/util/P;

    move-object v1, p1

    move v2, p2

    move-object v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/dropbox/android/util/P;->a([BI[BII)V

    goto :goto_a
.end method
