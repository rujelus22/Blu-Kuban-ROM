.class Lcom/google/googlenav/settings/t;
.super Lcom/google/googlenav/ct;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/googlenav/friend/i;

.field final synthetic b:Lcom/google/googlenav/settings/s;


# direct methods
.method constructor <init>(Lcom/google/googlenav/settings/s;Lcom/google/googlenav/common/io/protocol/ProtoBuf;Lcom/google/googlenav/cu;Lcom/google/googlenav/friend/i;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 198
    iput-object p1, p0, Lcom/google/googlenav/settings/t;->b:Lcom/google/googlenav/settings/s;

    iput-object p4, p0, Lcom/google/googlenav/settings/t;->a:Lcom/google/googlenav/friend/i;

    invoke-direct {p0, p2, p3}, Lcom/google/googlenav/ct;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Lcom/google/googlenav/cu;)V

    return-void
.end method


# virtual methods
.method public l_()V
    .registers 3

    .prologue
    .line 203
    invoke-super {p0}, Lcom/google/googlenav/ct;->l_()V

    .line 204
    iget-object v0, p0, Lcom/google/googlenav/settings/t;->b:Lcom/google/googlenav/settings/s;

    invoke-static {v0}, Lcom/google/googlenav/settings/s;->a(Lcom/google/googlenav/settings/s;)Lcom/google/googlenav/settings/B;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/settings/t;->a:Lcom/google/googlenav/friend/i;

    invoke-interface {v0, v1}, Lcom/google/googlenav/settings/B;->a(Lcom/google/googlenav/friend/i;)V

    .line 205
    return-void
.end method
