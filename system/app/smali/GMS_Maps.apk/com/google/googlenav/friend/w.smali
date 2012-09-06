.class Lcom/google/googlenav/friend/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/friend/Q;


# instance fields
.field final synthetic a:Lcom/google/googlenav/friend/t;


# direct methods
.method constructor <init>(Lcom/google/googlenav/friend/t;)V
    .registers 2
    .parameter

    .prologue
    .line 362
    iput-object p1, p0, Lcom/google/googlenav/friend/w;->a:Lcom/google/googlenav/friend/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    .prologue
    .line 374
    return-void
.end method

.method public a([Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 3
    .parameter

    .prologue
    .line 366
    iget-object v0, p0, Lcom/google/googlenav/friend/w;->a:Lcom/google/googlenav/friend/t;

    invoke-static {v0}, Lcom/google/googlenav/friend/t;->b(Lcom/google/googlenav/friend/t;)LaM/X;

    move-result-object v0

    invoke-virtual {v0}, LaM/X;->ax()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 367
    iget-object v0, p0, Lcom/google/googlenav/friend/w;->a:Lcom/google/googlenav/friend/t;

    invoke-static {v0}, Lcom/google/googlenav/friend/t;->b(Lcom/google/googlenav/friend/t;)LaM/X;

    move-result-object v0

    invoke-virtual {v0, p1}, LaM/X;->a([Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 369
    :cond_15
    return-void
.end method
