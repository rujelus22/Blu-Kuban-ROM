.class abstract Lcom/google/common/hash/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/hash/l;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/CharSequence;)Lcom/google/common/hash/l;
    .registers 3
    .parameter

    .prologue
    .line 43
    sget-object v0, Lcom/google/common/base/s;->e:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1, v0}, Lcom/google/common/hash/a;->a(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Lcom/google/common/hash/l;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Lcom/google/common/hash/l;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 48
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/hash/a;->a([B)Lcom/google/common/hash/l;
    :try_end_f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_f} :catch_11

    move-result-object v0

    return-object v0

    .line 49
    :catch_11
    move-exception v0

    .line 50
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public synthetic b(Ljava/lang/CharSequence;)Lcom/google/common/hash/r;
    .registers 3
    .parameter

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/google/common/hash/a;->a(Ljava/lang/CharSequence;)Lcom/google/common/hash/l;

    move-result-object v0

    return-object v0
.end method
