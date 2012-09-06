.class public LJN;
.super Ljava/io/FilterInputStream;
.source "HttpIssuerInputStream.java"


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3
    .parameter

    .prologue
    .line 24
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, LJN;->a:Z

    .line 25
    return-void
.end method

.method private a(I)I
    .registers 3
    .parameter

    .prologue
    .line 73
    const/4 v0, -0x1

    if-ne p1, v0, :cond_6

    .line 74
    invoke-virtual {p0}, LJN;->b()V

    .line 76
    :cond_6
    return p1
.end method


# virtual methods
.method a()V
    .registers 1

    .prologue
    .line 52
    invoke-super {p0}, Ljava/io/FilterInputStream;->close()V

    .line 53
    return-void
.end method

.method a()Z
    .registers 2

    .prologue
    .line 59
    iget-boolean v0, p0, LJN;->a:Z

    return v0
.end method

.method b()V
    .registers 2

    .prologue
    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, LJN;->a:Z

    .line 67
    return-void
.end method

.method public close()V
    .registers 1

    .prologue
    .line 46
    return-void
.end method

.method public read()I
    .registers 2

    .prologue
    .line 29
    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    move-result v0

    invoke-direct {p0, v0}, LJN;->a(I)I

    move-result v0

    return v0
.end method

.method public read([B)I
    .registers 3
    .parameter

    .prologue
    .line 34
    invoke-super {p0, p1}, Ljava/io/FilterInputStream;->read([B)I

    move-result v0

    invoke-direct {p0, v0}, LJN;->a(I)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 39
    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterInputStream;->read([BII)I

    move-result v0

    invoke-direct {p0, v0}, LJN;->a(I)I

    move-result v0

    return v0
.end method
