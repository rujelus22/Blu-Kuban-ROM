.class LaM/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/g;


# instance fields
.field final synthetic a:LaM/m;


# direct methods
.method constructor <init>(LaM/m;)V
    .registers 2
    .parameter

    .prologue
    .line 920
    iput-object p1, p0, LaM/q;->a:LaM/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 923
    iget-object v0, p0, LaM/q;->a:LaM/m;

    iget-object v0, v0, LaM/m;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->a()V

    .line 924
    if-eqz p2, :cond_25

    .line 925
    iget-object v0, p0, LaM/q;->a:LaM/m;

    iget-object v0, v0, LaM/m;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->ao()Lcom/google/googlenav/ui/wizard/z;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/ui/wizard/A;

    const/16 v2, 0x29

    invoke-direct {v1, v2, p0}, Lcom/google/googlenav/ui/wizard/A;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/z;->a(Lcom/google/googlenav/ui/wizard/A;)V

    .line 927
    invoke-static {p2}, Lcom/google/googlenav/ai;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/ai;

    move-result-object v0

    .line 928
    iget-object v1, p0, LaM/q;->a:LaM/m;

    invoke-static {v1, v0}, LaM/m;->a(LaM/m;Lcom/google/googlenav/ai;)V

    .line 933
    :goto_24
    return-void

    .line 930
    :cond_25
    iget-object v0, p0, LaM/q;->a:LaM/m;

    iget-object v0, v0, LaM/m;->b:Lcom/google/googlenav/ui/v;

    const/16 v1, 0x1eb

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/v;->a(Ljava/lang/String;)V

    goto :goto_24
.end method
