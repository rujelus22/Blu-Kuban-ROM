.class abstract Lcom/google/common/hash/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/hash/k;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    return-void
.end method


# virtual methods
.method public hashBytes([B)Lcom/google/common/hash/g;
    .registers 3
    .parameter

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/google/common/hash/b;->newHasher()Lcom/google/common/hash/l;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/hash/l;->a([B)Lcom/google/common/hash/l;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/hash/l;->a()Lcom/google/common/hash/g;

    move-result-object v0

    return-object v0
.end method

.method public hashBytes([BII)Lcom/google/common/hash/g;
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/google/common/hash/b;->newHasher()Lcom/google/common/hash/l;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/google/common/hash/l;->a([BII)Lcom/google/common/hash/l;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/hash/l;->a()Lcom/google/common/hash/g;

    move-result-object v0

    return-object v0
.end method

.method public hashLong(J)Lcom/google/common/hash/g;
    .registers 4
    .parameter

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/google/common/hash/b;->newHasher()Lcom/google/common/hash/l;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/hash/l;->a(J)Lcom/google/common/hash/l;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/hash/l;->a()Lcom/google/common/hash/g;

    move-result-object v0

    return-object v0
.end method

.method public hashString(Ljava/lang/CharSequence;)Lcom/google/common/hash/g;
    .registers 3
    .parameter

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/google/common/hash/b;->newHasher()Lcom/google/common/hash/l;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/hash/l;->a(Ljava/lang/CharSequence;)Lcom/google/common/hash/l;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/hash/l;->a()Lcom/google/common/hash/g;

    move-result-object v0

    return-object v0
.end method

.method public hashString(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Lcom/google/common/hash/g;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/google/common/hash/b;->newHasher()Lcom/google/common/hash/l;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/hash/l;->a(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Lcom/google/common/hash/l;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/hash/l;->a()Lcom/google/common/hash/g;

    move-result-object v0

    return-object v0
.end method

.method public newHasher(I)Lcom/google/common/hash/l;
    .registers 3
    .parameter

    .prologue
    .line 57
    if-ltz p1, :cond_b

    const/4 v0, 0x1

    :goto_3
    invoke-static {v0}, Lcom/google/common/base/ag;->a(Z)V

    .line 58
    invoke-virtual {p0}, Lcom/google/common/hash/b;->newHasher()Lcom/google/common/hash/l;

    move-result-object v0

    return-object v0

    .line 57
    :cond_b
    const/4 v0, 0x0

    goto :goto_3
.end method
