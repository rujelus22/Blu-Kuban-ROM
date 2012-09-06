.class Lcom/google/googlenav/ui/wizard/I;
.super Lcom/google/googlenav/ct;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/H;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/H;Lcom/google/googlenav/common/io/protocol/ProtoBuf;Lcom/google/googlenav/cu;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 108
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/I;->a:Lcom/google/googlenav/ui/wizard/H;

    invoke-direct {p0, p2, p3}, Lcom/google/googlenav/ct;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Lcom/google/googlenav/cu;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/io/DataInput;)Z
    .registers 5
    .parameter

    .prologue
    .line 111
    invoke-super {p0, p1}, Lcom/google/googlenav/ct;->a(Ljava/io/DataInput;)Z

    move-result v0

    .line 112
    if-eqz v0, :cond_10

    .line 113
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/I;->a:Lcom/google/googlenav/ui/wizard/H;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/H;->a(Lcom/google/googlenav/ui/wizard/H;)Lcom/google/googlenav/friend/j;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/googlenav/friend/j;->b(Lcom/google/googlenav/friend/k;)V

    .line 115
    :cond_10
    return v0
.end method
