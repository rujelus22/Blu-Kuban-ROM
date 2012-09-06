.class Lcom/google/googlenav/ui/wizard/be;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/ui/wizard/ga;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/ba;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/ba;)V
    .registers 2
    .parameter

    .prologue
    .line 198
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/be;->a:Lcom/google/googlenav/ui/wizard/ba;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    .prologue
    .line 210
    return-void
.end method

.method public a(Lcom/google/googlenav/h;)V
    .registers 8
    .parameter

    .prologue
    .line 202
    invoke-static {p1}, Lcom/google/googlenav/ui/wizard/aY;->a(Lcom/google/googlenav/h;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v5

    .line 203
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/be;->a:Lcom/google/googlenav/ui/wizard/ba;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/be;->a:Lcom/google/googlenav/ui/wizard/ba;

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/ba;->a:Lcom/google/googlenav/ui/wizard/aY;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/aY;->a(Lcom/google/googlenav/ui/wizard/aY;)Lcom/google/googlenav/friend/history/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/friend/history/l;->e()J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/be;->a:Lcom/google/googlenav/ui/wizard/ba;

    iget-object v3, v3, Lcom/google/googlenav/ui/wizard/ba;->a:Lcom/google/googlenav/ui/wizard/aY;

    invoke-static {v3}, Lcom/google/googlenav/ui/wizard/aY;->a(Lcom/google/googlenav/ui/wizard/aY;)Lcom/google/googlenav/friend/history/l;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlenav/friend/history/l;->f()J

    move-result-wide v3

    invoke-virtual/range {v0 .. v5}, Lcom/google/googlenav/ui/wizard/ba;->a(JJLcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 205
    return-void
.end method
