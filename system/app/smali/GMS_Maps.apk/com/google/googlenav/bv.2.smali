.class public Lcom/google/googlenav/bv;
.super Lcom/google/googlenav/ai;
.source "SourceFile"


# instance fields
.field private final c:Z


# direct methods
.method public constructor <init>(Lax/A;)V
    .registers 4
    .parameter

    .prologue
    .line 33
    invoke-virtual {p1}, Lax/A;->j()Lat/B;

    move-result-object v0

    invoke-virtual {p1}, Lax/A;->h()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/googlenav/ai;-><init>(Lat/g;Ljava/lang/String;)V

    .line 35
    invoke-virtual {p1}, Lax/A;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/bv;->d(Ljava/lang/String;)V

    .line 36
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/google/googlenav/bv;->a(B)V

    .line 37
    invoke-virtual {p1}, Lax/A;->k()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/bv;->a(Ljava/util/List;)V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/bv;->c:Z

    .line 39
    return-void
.end method

.method public constructor <init>(Lax/A;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 45
    invoke-direct {p0, p2}, Lcom/google/googlenav/ai;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 46
    invoke-virtual {p1}, Lax/A;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/bv;->d(Ljava/lang/String;)V

    .line 47
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/google/googlenav/bv;->a(B)V

    .line 48
    invoke-virtual {p1}, Lax/A;->j()Lat/B;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 49
    invoke-virtual {p1}, Lax/A;->j()Lat/B;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/bv;->c(Lat/g;)V

    .line 51
    :cond_1b
    invoke-virtual {p1}, Lax/A;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/bv;->g(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p1}, Lax/A;->k()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/bv;->a(Ljava/util/List;)V

    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/bv;->c:Z

    .line 54
    return-void
.end method


# virtual methods
.method public f()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/google/googlenav/bv;->B()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public i()Z
    .registers 2

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/google/googlenav/bv;->c:Z

    return v0
.end method
