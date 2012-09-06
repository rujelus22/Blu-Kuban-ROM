.class public abstract Lcom/google/googlenav/friend/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/friend/b;


# instance fields
.field private final a:Lcom/google/googlenav/friend/bk;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/friend/bk;)V
    .registers 2
    .parameter

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/google/googlenav/friend/n;->a:Lcom/google/googlenav/friend/bk;

    .line 21
    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 25
    iget-object v0, p0, Lcom/google/googlenav/friend/n;->a:Lcom/google/googlenav/friend/bk;

    invoke-virtual {v0}, Lcom/google/googlenav/friend/bk;->g()I

    move-result v0

    return v0
.end method

.method public a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 3
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/googlenav/friend/n;->a:Lcom/google/googlenav/friend/bk;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/friend/bk;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 36
    return-void
.end method

.method public b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 3
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/googlenav/friend/n;->a:Lcom/google/googlenav/friend/bk;

    invoke-virtual {v0}, Lcom/google/googlenav/friend/bk;->s()V

    .line 41
    return-void
.end method

.method public b()Z
    .registers 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/googlenav/friend/n;->a:Lcom/google/googlenav/friend/bk;

    invoke-virtual {v0}, Lcom/google/googlenav/friend/bk;->w()Z

    move-result v0

    return v0
.end method

.method public c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Z
    .registers 3
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/googlenav/friend/n;->a:Lcom/google/googlenav/friend/bk;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/friend/bk;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Z

    move-result v0

    return v0
.end method
