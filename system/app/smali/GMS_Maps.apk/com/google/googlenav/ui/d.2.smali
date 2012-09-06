.class Lcom/google/googlenav/ui/D;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/g;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/v;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/v;)V
    .registers 2
    .parameter

    .prologue
    .line 3572
    iput-object p1, p0, Lcom/google/googlenav/ui/D;->a:Lcom/google/googlenav/ui/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 3575
    iget-object v0, p0, Lcom/google/googlenav/ui/D;->a:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->a()V

    .line 3578
    iget-object v0, p0, Lcom/google/googlenav/ui/D;->a:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->am()Lax/m;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lax/m;->b(Ljava/lang/String;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Z

    .line 3580
    iget-object v0, p0, Lcom/google/googlenav/ui/D;->a:Lcom/google/googlenav/ui/v;

    invoke-static {p2}, Lcom/google/googlenav/ai;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/ai;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/v;->a(Lcom/google/googlenav/ui/v;Lcom/google/googlenav/ai;)V

    .line 3581
    return-void
.end method
