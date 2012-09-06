.class Lcom/google/googlenav/ui/wizard/cg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/g;


# instance fields
.field final synthetic a:Lac/c;

.field final synthetic b:Lcom/google/googlenav/ui/wizard/ce;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/ce;Lac/c;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 103
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/cg;->b:Lcom/google/googlenav/ui/wizard/ce;

    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/cg;->a:Lac/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 107
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cg;->a:Lac/c;

    invoke-virtual {v0}, Lac/c;->b()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 114
    :goto_8
    return-void

    .line 112
    :cond_9
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cg;->b:Lcom/google/googlenav/ui/wizard/ce;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/ce;->d:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->j()V

    .line 113
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cg;->b:Lcom/google/googlenav/ui/wizard/ce;

    invoke-static {v0, p2}, Lcom/google/googlenav/ui/wizard/ce;->a(Lcom/google/googlenav/ui/wizard/ce;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    goto :goto_8
.end method
