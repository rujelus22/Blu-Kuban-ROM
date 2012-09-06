.class Lcom/google/googlenav/ui/wizard/gL;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/gJ;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/gJ;)V
    .registers 2
    .parameter

    .prologue
    .line 139
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/gL;->a:Lcom/google/googlenav/ui/wizard/gJ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 143
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gL;->a:Lcom/google/googlenav/ui/wizard/gJ;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/gJ;->b(Lcom/google/googlenav/ui/wizard/gJ;)Lcom/google/googlenav/ui/wizard/gN;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/gL;->a:Lcom/google/googlenav/ui/wizard/gJ;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/gJ;->a(Lcom/google/googlenav/ui/wizard/gJ;)Lcom/google/googlenav/ui/wizard/gT;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/gT;->m()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/ui/wizard/gN;->a(Ljava/util/List;)V

    .line 144
    return-void
.end method

.method public b()V
    .registers 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gL;->a:Lcom/google/googlenav/ui/wizard/gJ;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/gJ;->b(Lcom/google/googlenav/ui/wizard/gJ;)Lcom/google/googlenav/ui/wizard/gN;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/ui/wizard/gN;->a()V

    .line 149
    return-void
.end method
