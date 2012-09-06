.class Lcom/google/googlenav/ui/wizard/ei;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/ui/wizard/eg;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/eh;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/eh;)V
    .registers 2
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/ei;->a:Lcom/google/googlenav/ui/wizard/eh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ei;->a:Lcom/google/googlenav/ui/wizard/eh;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/eh;->a()V

    .line 80
    return-void
.end method

.method public a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 4
    .parameter

    .prologue
    .line 58
    if-nez p1, :cond_3

    .line 75
    :goto_2
    return-void

    .line 62
    :cond_3
    new-instance v0, Lcom/google/googlenav/ui/wizard/ep;

    invoke-direct {v0}, Lcom/google/googlenav/ui/wizard/ep;-><init>()V

    .line 63
    new-instance v1, Lcom/google/googlenav/h;

    invoke-direct {v1, p1}, Lcom/google/googlenav/h;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    iput-object v1, v0, Lcom/google/googlenav/ui/wizard/ep;->a:Lcom/google/googlenav/h;

    .line 64
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/ei;->a:Lcom/google/googlenav/ui/wizard/eh;

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/eh;->d:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/ju;->G()Lcom/google/googlenav/J;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/googlenav/J;->m()LaM/a;

    move-result-object v1

    iput-object v1, v0, Lcom/google/googlenav/ui/wizard/ep;->d:LaM/a;

    .line 66
    new-instance v1, Lcom/google/googlenav/ui/wizard/ej;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/wizard/ej;-><init>(Lcom/google/googlenav/ui/wizard/ei;)V

    iput-object v1, v0, Lcom/google/googlenav/ui/wizard/ep;->b:Lcom/google/googlenav/ui/wizard/eo;

    .line 74
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/ei;->a:Lcom/google/googlenav/ui/wizard/eh;

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/eh;->d:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/wizard/ju;->a(Lcom/google/googlenav/ui/wizard/ep;)V

    goto :goto_2
.end method
