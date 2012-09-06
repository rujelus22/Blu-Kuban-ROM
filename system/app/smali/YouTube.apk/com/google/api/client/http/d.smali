.class public final Lcom/google/api/client/http/d;
.super Lcom/google/api/client/http/b;
.source "SourceFile"


# instance fields
.field private final a:[B

.field private final b:I

.field private final c:I


# direct methods
.method public constructor <init>(Ljava/lang/String;[B)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 65
    const/4 v0, 0x0

    array-length v1, p2

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/api/client/http/d;-><init>(Ljava/lang/String;[BII)V

    .line 66
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;[BII)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 79
    invoke-direct {p0, p1}, Lcom/google/api/client/http/b;-><init>(Ljava/lang/String;)V

    .line 80
    invoke-static {p2}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/google/api/client/http/d;->a:[B

    .line 81
    if-ltz p4, :cond_1c

    add-int/lit8 v0, p4, 0x0

    array-length v2, p2

    if-gt v0, v2, :cond_1c

    const/4 v0, 0x1

    :goto_14
    invoke-static {v0}, Lcom/google/common/base/ag;->a(Z)V

    .line 82
    iput v1, p0, Lcom/google/api/client/http/d;->b:I

    .line 83
    iput p4, p0, Lcom/google/api/client/http/d;->c:I

    .line 84
    return-void

    :cond_1c
    move v0, v1

    .line 81
    goto :goto_14
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/String;)Lcom/google/api/client/http/b;
    .registers 3
    .parameter

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/google/api/client/http/b;->a(Ljava/lang/String;)Lcom/google/api/client/http/b;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/http/d;

    return-object v0
.end method

.method public final b()J
    .registers 3

    .prologue
    .line 110
    iget v0, p0, Lcom/google/api/client/http/d;->c:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public final c()Z
    .registers 2

    .prologue
    .line 114
    const/4 v0, 0x1

    return v0
.end method

.method public final d()Ljava/io/InputStream;
    .registers 5

    .prologue
    .line 119
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/google/api/client/http/d;->a:[B

    iget v2, p0, Lcom/google/api/client/http/d;->b:I

    iget v3, p0, Lcom/google/api/client/http/d;->c:I

    invoke-direct {v0, v1, v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    return-object v0
.end method
