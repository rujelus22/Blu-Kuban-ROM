.class public Lcom/google/googlenav/common/io/c;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:[B

.field private c:I

.field private d:I

.field private e:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/google/googlenav/common/io/c;->e:Ljava/io/InputStream;

    .line 37
    iput p2, p0, Lcom/google/googlenav/common/io/c;->a:I

    .line 39
    const/16 v0, 0x1000

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/googlenav/common/io/c;->b:[B

    .line 40
    return-void
.end method

.method private a()Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 47
    iget v1, p0, Lcom/google/googlenav/common/io/c;->a:I

    if-gtz v1, :cond_6

    .line 59
    :goto_5
    return v0

    .line 51
    :cond_6
    iget v1, p0, Lcom/google/googlenav/common/io/c;->c:I

    iget v2, p0, Lcom/google/googlenav/common/io/c;->d:I

    if-lt v1, v2, :cond_28

    .line 52
    iget-object v1, p0, Lcom/google/googlenav/common/io/c;->e:Ljava/io/InputStream;

    iget-object v2, p0, Lcom/google/googlenav/common/io/c;->b:[B

    iget v3, p0, Lcom/google/googlenav/common/io/c;->a:I

    iget-object v4, p0, Lcom/google/googlenav/common/io/c;->b:[B

    array-length v4, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {v1, v2, v0, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    iput v1, p0, Lcom/google/googlenav/common/io/c;->d:I

    .line 53
    iget v1, p0, Lcom/google/googlenav/common/io/c;->d:I

    if-gtz v1, :cond_26

    .line 54
    iput v0, p0, Lcom/google/googlenav/common/io/c;->a:I

    goto :goto_5

    .line 57
    :cond_26
    iput v0, p0, Lcom/google/googlenav/common/io/c;->c:I

    .line 59
    :cond_28
    const/4 v0, 0x1

    goto :goto_5
.end method


# virtual methods
.method public available()I
    .registers 3

    .prologue
    .line 64
    iget v0, p0, Lcom/google/googlenav/common/io/c;->d:I

    iget v1, p0, Lcom/google/googlenav/common/io/c;->c:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public read()I
    .registers 4

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/google/googlenav/common/io/c;->a()Z

    move-result v0

    if-nez v0, :cond_8

    .line 70
    const/4 v0, -0x1

    .line 73
    :goto_7
    return v0

    .line 72
    :cond_8
    iget v0, p0, Lcom/google/googlenav/common/io/c;->a:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/googlenav/common/io/c;->a:I

    .line 73
    iget-object v0, p0, Lcom/google/googlenav/common/io/c;->b:[B

    iget v1, p0, Lcom/google/googlenav/common/io/c;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/googlenav/common/io/c;->c:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    goto :goto_7
.end method

.method public read([BII)I
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/google/googlenav/common/io/c;->a()Z

    move-result v0

    if-nez v0, :cond_8

    .line 79
    const/4 v0, -0x1

    .line 85
    :goto_7
    return v0

    .line 81
    :cond_8
    iget v0, p0, Lcom/google/googlenav/common/io/c;->d:I

    iget v1, p0, Lcom/google/googlenav/common/io/c;->c:I

    sub-int/2addr v0, v1

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 82
    iget-object v1, p0, Lcom/google/googlenav/common/io/c;->b:[B

    iget v2, p0, Lcom/google/googlenav/common/io/c;->c:I

    invoke-static {v1, v2, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 83
    iget v1, p0, Lcom/google/googlenav/common/io/c;->c:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/googlenav/common/io/c;->c:I

    .line 84
    iget v1, p0, Lcom/google/googlenav/common/io/c;->a:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/google/googlenav/common/io/c;->a:I

    goto :goto_7
.end method
