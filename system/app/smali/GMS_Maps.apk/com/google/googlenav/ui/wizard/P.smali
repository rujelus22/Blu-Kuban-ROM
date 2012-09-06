.class public Lcom/google/googlenav/ui/wizard/p;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lat/B;Ljava/lang/String;Lcom/google/googlenav/friend/bh;)Lcom/google/googlenav/friend/bg;
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 30
    const/16 v0, 0x66

    const-string v1, "a"

    const-string v2, "s"

    invoke-static {v0, v1, v2}, LaT/p;->a(ILjava/lang/String;Ljava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 33
    new-instance v1, Lcom/google/googlenav/friend/bi;

    invoke-direct {v1}, Lcom/google/googlenav/friend/bi;-><init>()V

    invoke-virtual {p0}, Lat/B;->c()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/friend/bi;->a(I)Lcom/google/googlenav/friend/bi;

    move-result-object v1

    invoke-virtual {p0}, Lat/B;->e()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/friend/bi;->b(I)Lcom/google/googlenav/friend/bi;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/googlenav/friend/bi;->a(Ljava/lang/String;)Lcom/google/googlenav/friend/bi;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/googlenav/friend/bi;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/friend/bi;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/google/googlenav/friend/bi;->a(Lcom/google/googlenav/friend/bh;)Lcom/google/googlenav/friend/bi;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Lcom/google/googlenav/friend/bi;->g(I)Lcom/google/googlenav/friend/bi;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/googlenav/friend/bi;->a(Z)Lcom/google/googlenav/friend/bi;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/google/googlenav/friend/bi;->b(Z)Lcom/google/googlenav/friend/bi;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/google/googlenav/friend/bi;->c(Z)Lcom/google/googlenav/friend/bi;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/friend/bi;->h(I)Lcom/google/googlenav/friend/bi;

    move-result-object v1

    .line 46
    invoke-static {v0}, LaT/p;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 47
    invoke-virtual {v1}, Lcom/google/googlenav/friend/bi;->a()Lcom/google/googlenav/friend/bg;

    move-result-object v0

    .line 48
    invoke-static {}, Lac/h;->a()Lac/h;

    move-result-object v1

    invoke-virtual {v1, v0}, Lac/h;->c(Lac/g;)V

    .line 49
    return-object v0
.end method
