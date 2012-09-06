.class Lax/Y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lax/K;


# instance fields
.field final synthetic a:Lax/n;

.field final synthetic b:Lax/W;


# direct methods
.method constructor <init>(Lax/W;Lax/n;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 201
    iput-object p1, p0, Lax/Y;->b:Lax/W;

    iput-object p2, p0, Lax/Y;->a:Lax/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 4
    .parameter

    .prologue
    .line 204
    invoke-static {p1}, Lax/W;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 205
    if-eqz v0, :cond_c

    .line 206
    iget-object v1, p0, Lax/Y;->a:Lax/n;

    invoke-interface {v1, v0}, Lax/n;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 210
    :goto_b
    return-void

    .line 208
    :cond_c
    iget-object v0, p0, Lax/Y;->a:Lax/n;

    invoke-interface {v0}, Lax/n;->a()V

    goto :goto_b
.end method
