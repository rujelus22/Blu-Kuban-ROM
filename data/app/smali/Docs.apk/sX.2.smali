.class LsX;
.super Ljava/io/FilterInputStream;
.source "CancelableInputStream.java"


# instance fields
.field private final a:LsY;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;LsY;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 28
    iput-object p2, p0, LsX;->a:LsY;

    .line 29
    return-void
.end method

.method private a()V
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, LsX;->a:LsY;

    invoke-interface {v0}, LsY;->a()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 55
    new-instance v0, LsZ;

    invoke-direct {v0}, LsZ;-><init>()V

    throw v0

    .line 57
    :cond_e
    return-void
.end method


# virtual methods
.method public read()I
    .registers 2

    .prologue
    .line 33
    invoke-direct {p0}, LsX;->a()V

    .line 34
    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    move-result v0

    .line 35
    invoke-direct {p0}, LsX;->a()V

    .line 36
    return v0
.end method

.method public read([B)I
    .registers 4
    .parameter

    .prologue
    .line 49
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, LsX;->read([BII)I

    move-result v0

    .line 50
    return v0
.end method

.method public read([BII)I
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 41
    invoke-direct {p0}, LsX;->a()V

    .line 42
    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterInputStream;->read([BII)I

    move-result v0

    .line 43
    invoke-direct {p0}, LsX;->a()V

    .line 44
    return v0
.end method
