.class public abstract Lbk/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbk/q;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    return-void
.end method

.method protected static a(Lbk/p;)Lbk/x;
    .registers 2
    .parameter

    .prologue
    .line 278
    new-instance v0, Lbk/x;

    invoke-direct {v0, p0}, Lbk/x;-><init>(Lbk/p;)V

    return-object v0
.end method


# virtual methods
.method public a(Lbk/f;)Lbk/b;
    .registers 3
    .parameter

    .prologue
    .line 88
    invoke-static {}, Lbk/i;->a()Lbk/i;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lbk/b;->b(Lbk/f;Lbk/i;)Lbk/b;

    move-result-object v0

    return-object v0
.end method

.method public a([B)Lbk/b;
    .registers 4
    .parameter

    .prologue
    .line 133
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lbk/b;->a([BII)Lbk/b;

    move-result-object v0

    return-object v0
.end method

.method public a([BII)Lbk/b;
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 140
    :try_start_0
    invoke-static {p1, p2, p3}, Lbk/f;->a([BII)Lbk/f;

    move-result-object v0

    .line 142
    invoke-virtual {p0, v0}, Lbk/b;->a(Lbk/f;)Lbk/b;

    .line 143
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lbk/f;->a(I)V
    :try_end_b
    .catch Lbk/l; {:try_start_0 .. :try_end_b} :catch_c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_b} :catch_e

    .line 144
    return-object p0

    .line 145
    :catch_c
    move-exception v0

    .line 146
    throw v0

    .line 147
    :catch_e
    move-exception v0

    .line 148
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Reading from a byte array threw an IOException (should never happen)."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public abstract b(Lbk/f;Lbk/i;)Lbk/b;
.end method

.method public synthetic b([B)Lbk/q;
    .registers 3
    .parameter

    .prologue
    .line 79
    invoke-virtual {p0, p1}, Lbk/b;->a([B)Lbk/b;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 79
    invoke-virtual {p0}, Lbk/b;->e()Lbk/b;

    move-result-object v0

    return-object v0
.end method

.method public abstract e()Lbk/b;
.end method
