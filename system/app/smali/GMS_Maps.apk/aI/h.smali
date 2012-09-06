.class public LaI/h;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(I)LaI/w;
    .registers 3
    .parameter

    .prologue
    .line 66
    new-instance v0, LaI/y;

    invoke-direct {v0}, LaI/y;-><init>()V

    const/16 v1, 0x2f0

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, LaI/y;->b(Ljava/lang/String;)LaI/y;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, LaI/y;->a(I)LaI/y;

    move-result-object v0

    invoke-virtual {v0, p0}, LaI/y;->b(I)LaI/y;

    move-result-object v0

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, LaI/y;->c(I)LaI/y;

    move-result-object v0

    const-string v1, "google.myplaces_panel:"

    invoke-virtual {v0, v1}, LaI/y;->e(Ljava/lang/String;)LaI/y;

    move-result-object v0

    invoke-virtual {v0}, LaI/y;->a()LaI/w;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lax/r;Lax/A;)Ljava/lang/String;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-virtual {p1}, Lax/A;->h()Ljava/lang/String;

    move-result-object v1

    .line 34
    invoke-virtual {p1}, Lax/A;->g()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lax/r;->b(Ljava/lang/String;)Lax/E;

    move-result-object v0

    .line 35
    if-eqz v0, :cond_4a

    invoke-virtual {v0}, Lax/E;->b()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v2

    if-eqz v2, :cond_4a

    .line 36
    invoke-virtual {v0}, Lax/E;->b()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/ai;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/ai;

    move-result-object v0

    .line 39
    invoke-virtual {v0}, Lcom/google/googlenav/ai;->E()Ljava/lang/String;

    move-result-object v2

    .line 40
    invoke-virtual {v0}, Lcom/google/googlenav/ai;->F()Ljava/lang/String;

    move-result-object v0

    .line 44
    invoke-virtual {p1}, Lax/A;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_37

    .line 45
    invoke-static {v2, v0}, Lcom/google/googlenav/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 50
    :cond_37
    invoke-virtual {p1}, Lax/A;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4a

    .line 51
    invoke-virtual {p1}, Lax/A;->h()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/googlenav/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 54
    :goto_49
    return-object v0

    :cond_4a
    move-object v0, v1

    goto :goto_49
.end method
